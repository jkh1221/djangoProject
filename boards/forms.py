from django import forms
from .models import Topic
from .models import Post

class NewTopicForm(forms.ModelForm):
    message = forms.CharField(
        label='message_label',
        widget=forms.Textarea(
            attrs={'rows': 5, 'placeholder': 'What is on your mind?', 'id': 'ddddd', 'class': 'myCustomClass'}
        ),
        max_length=200,
        help_text='The max length of the text is 200.',
        min_length=10,
    )
    # subject = forms.CharField(label="subject_label", widget=forms.TextInput(), min_length=3)

    class Meta:
        model = Topic
        fields = ['subject', 'message']

    # def __init__(self, *args, **kwargs):
    #     super(NewTopicForm, self).__init__(*args, **kwargs)
    #     self.fields['message'].widget.attrs.update({'id' : 'eeeeeeeee'})

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ['message', ]        