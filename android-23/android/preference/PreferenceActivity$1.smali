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
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    #@0
    .prologue
    .line 228
    iput-object p1, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 231
    iget v3, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v3, :pswitch_data_0

    #@5
    .line 230
    :cond_0
    :goto_0
    return-void

    #@6
    .line 233
    :pswitch_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@8
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-wrap0(Landroid/preference/PreferenceActivity;)V

    #@b
    goto :goto_0

    #@c
    .line 236
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    #@e
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@10
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    #@13
    move-result-object v3

    #@14
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@17
    .line 237
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@19
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@20
    .line 238
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@22
    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@24
    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    #@2b
    .line 239
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@2d
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get0(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    #@30
    move-result-object v3

    #@31
    instance-of v3, v3, Landroid/widget/BaseAdapter;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 240
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@37
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get0(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Landroid/widget/BaseAdapter;

    #@3d
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@40
    .line 242
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@42
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onGetNewHeader()Landroid/preference/PreferenceActivity$Header;

    #@45
    move-result-object v0

    #@46
    .line 243
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_3

    #@48
    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #@4a
    if-eqz v3, :cond_3

    #@4c
    .line 244
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@4e
    invoke-virtual {v3, v0, v2}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    #@51
    move-result-object v1

    #@52
    .line 245
    .local v1, "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    #@54
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@56
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get1(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    #@59
    move-result-object v3

    #@5a
    if-eq v3, v1, :cond_0

    #@5c
    .line 246
    :cond_2
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@5e
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@61
    goto :goto_0

    #@62
    .line 248
    .end local v1    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@64
    invoke-static {v3}, Landroid/preference/PreferenceActivity;->-get1(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    #@67
    move-result-object v3

    #@68
    if-eqz v3, :cond_0

    #@6a
    .line 249
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@6c
    iget-object v4, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@6e
    invoke-static {v4}, Landroid/preference/PreferenceActivity;->-get1(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;

    #@71
    move-result-object v4

    #@72
    iget-object v5, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@74
    invoke-static {v5}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;

    #@77
    move-result-object v5

    #@78
    invoke-virtual {v3, v4, v5}, Landroid/preference/PreferenceActivity;->findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;

    #@7b
    move-result-object v1

    #@7c
    .line 250
    .restart local v1    # "mappedHeader":Landroid/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    #@7e
    .line 251
    iget-object v3, p0, Landroid/preference/PreferenceActivity$1;->this$0:Landroid/preference/PreferenceActivity;

    #@80
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    #@83
    goto :goto_0

    #@84
    .line 231
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
