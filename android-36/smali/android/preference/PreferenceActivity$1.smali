.class Landroid/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceActivity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    goto/16 :goto_86

    .line 236
    :pswitch_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 237
    .local v0, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 239
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$000(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_3b

    .line 240
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    # getter for: Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Landroid/preference/PreferenceActivity;->access$100(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 242
    :cond_3b
    iget-object v1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onGetNewHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 243
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_5d

    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 244
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2, v1, v0}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    .line 245
    .local v2, "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v2, :cond_57

    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v2, :cond_7f

    .line 246
    :cond_57
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_7f

    .line 248
    .end local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_5d
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 249
    iget-object v2, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    .line 250
    .restart local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v2, :cond_86

    .line 251
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_86

    .line 248
    .end local v2    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_7f
    :goto_7f
    goto :goto_86

    .line 233
    .end local v0    # "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    :pswitch_80
    iget-object v0, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Landroid/preference/PreferenceActivity;->-$$Nest$mbindPreferences(Landroid/preference/PreferenceActivity;)V

    .line 234
    nop

    .line 256
    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_80
        :pswitch_7
    .end packed-switch
.end method
