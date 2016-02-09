.class Landroid/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceFragment;

    #@0
    .prologue
    .line 124
    iput-object p1, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 126
    :goto_0
    return-void

    #@6
    .line 130
    :pswitch_0
    iget-object v0, p0, Landroid/preference/PreferenceFragment$1;->this$0:Landroid/preference/PreferenceFragment;

    #@8
    invoke-static {v0}, Landroid/preference/PreferenceFragment;->-wrap0(Landroid/preference/PreferenceFragment;)V

    #@b
    goto :goto_0

    #@c
    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
