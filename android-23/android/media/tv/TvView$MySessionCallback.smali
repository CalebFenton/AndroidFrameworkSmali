.class Landroid/media/tv/TvView$MySessionCallback;
.super Landroid/media/tv/TvInputManager$SessionCallback;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySessionCallback"
.end annotation


# instance fields
.field mChannelUri:Landroid/net/Uri;

.field final mInputId:Ljava/lang/String;

.field mTuneParams:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvView;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "channelUri"    # Landroid/net/Uri;
    .param p4, "tuneParams"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 998
    iput-object p1, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$SessionCallback;-><init>()V

    #@5
    .line 999
    iput-object p2, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@7
    .line 1000
    iput-object p3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@9
    .line 1001
    iput-object p4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    #@b
    .line 998
    return-void
.end method


# virtual methods
.method public onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 1079
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1080
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onChannelRetuned - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1081
    return-void

    #@12
    .line 1083
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1084
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V

    #@25
    .line 1075
    :cond_1
    return-void
.end method

.method public onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 1163
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1164
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onContentAllowed - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1165
    return-void

    #@12
    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1168
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onContentAllowed(Ljava/lang/String;)V

    #@25
    .line 1159
    :cond_1
    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    #@0
    .prologue
    .line 1177
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1178
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onContentBlocked - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1179
    return-void

    #@12
    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1182
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V

    #@25
    .line 1173
    :cond_1
    return-void
.end method

.method public onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 1192
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1193
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onLayoutSurface - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1194
    return-void

    #@12
    .line 1196
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0, p2}, Landroid/media/tv/TvView;->-set9(Landroid/media/tv/TvView;I)I

    #@17
    .line 1197
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@19
    invoke-static {v0, p3}, Landroid/media/tv/TvView;->-set11(Landroid/media/tv/TvView;I)I

    #@1c
    .line 1198
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1e
    invoke-static {v0, p4}, Landroid/media/tv/TvView;->-set10(Landroid/media/tv/TvView;I)I

    #@21
    .line 1199
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@23
    invoke-static {v0, p5}, Landroid/media/tv/TvView;->-set8(Landroid/media/tv/TvView;I)I

    #@26
    .line 1200
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@28
    const/4 v1, 0x1

    #@29
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set13(Landroid/media/tv/TvView;Z)Z

    #@2c
    .line 1201
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2e
    invoke-virtual {v0}, Landroid/media/tv/TvView;->requestLayout()V

    #@31
    .line 1187
    return-void
.end method

.method public onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 6
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1009
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@3
    invoke-static {v2}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@6
    move-result-object v2

    #@7
    if-eq p0, v2, :cond_1

    #@9
    .line 1010
    const-string/jumbo v2, "TvView"

    #@c
    const-string/jumbo v3, "onSessionCreated - session already created"

    #@f
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1012
    if-eqz p1, :cond_0

    #@14
    .line 1013
    invoke-virtual {p1}, Landroid/media/tv/TvInputManager$Session;->release()V

    #@17
    .line 1015
    :cond_0
    return-void

    #@18
    .line 1017
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1a
    invoke-static {v2, p1}, Landroid/media/tv/TvView;->-set2(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    #@1d
    .line 1018
    if-eqz p1, :cond_8

    #@1f
    .line 1020
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@21
    invoke-static {v2}, Landroid/media/tv/TvView;->-get2(Landroid/media/tv/TvView;)Ljava/util/Queue;

    #@24
    move-result-object v2

    #@25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    .local v1, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/util/Pair;

    #@35
    .line 1021
    .local v0, "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@37
    invoke-static {v2}, Landroid/media/tv/TvView;->-get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    #@3a
    move-result-object v4

    #@3b
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@3d
    check-cast v2, Ljava/lang/String;

    #@3f
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@41
    check-cast v3, Landroid/os/Bundle;

    #@43
    invoke-virtual {v4, v2, v3}, Landroid/media/tv/TvInputManager$Session;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    #@46
    goto :goto_0

    #@47
    .line 1023
    .end local v0    # "command":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_2
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@49
    invoke-static {v2}, Landroid/media/tv/TvView;->-get2(Landroid/media/tv/TvView;)Ljava/util/Queue;

    #@4c
    move-result-object v2

    #@4d
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    #@50
    .line 1025
    invoke-static {}, Landroid/media/tv/TvView;->-get13()Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    monitor-enter v3

    #@55
    .line 1026
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@57
    invoke-virtual {v2}, Landroid/media/tv/TvView;->hasWindowFocus()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@5f
    invoke-static {}, Landroid/media/tv/TvView;->-get12()Ljava/lang/ref/WeakReference;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@66
    move-result-object v4

    #@67
    if-ne v2, v4, :cond_3

    #@69
    .line 1027
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@6b
    invoke-static {v2}, Landroid/media/tv/TvView;->-get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2}, Landroid/media/tv/TvInputManager$Session;->setMain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@72
    :cond_3
    monitor-exit v3

    #@73
    .line 1033
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@75
    invoke-static {v2}, Landroid/media/tv/TvView;->-get6(Landroid/media/tv/TvView;)Landroid/view/Surface;

    #@78
    move-result-object v2

    #@79
    if-eqz v2, :cond_4

    #@7b
    .line 1034
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@7d
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@7f
    invoke-static {v3}, Landroid/media/tv/TvView;->-get6(Landroid/media/tv/TvView;)Landroid/view/Surface;

    #@82
    move-result-object v3

    #@83
    invoke-static {v2, v3}, Landroid/media/tv/TvView;->-wrap4(Landroid/media/tv/TvView;Landroid/view/Surface;)V

    #@86
    .line 1035
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@88
    invoke-static {v2}, Landroid/media/tv/TvView;->-get7(Landroid/media/tv/TvView;)Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_4

    #@8e
    .line 1036
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@90
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@92
    invoke-static {v3}, Landroid/media/tv/TvView;->-get8(Landroid/media/tv/TvView;)I

    #@95
    move-result v3

    #@96
    iget-object v4, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@98
    invoke-static {v4}, Landroid/media/tv/TvView;->-get10(Landroid/media/tv/TvView;)I

    #@9b
    move-result v4

    #@9c
    iget-object v5, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@9e
    invoke-static {v5}, Landroid/media/tv/TvView;->-get9(Landroid/media/tv/TvView;)I

    #@a1
    move-result v5

    #@a2
    invoke-static {v2, v3, v4, v5}, Landroid/media/tv/TvView;->-wrap1(Landroid/media/tv/TvView;III)V

    #@a5
    .line 1039
    :cond_4
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@a7
    invoke-static {v2}, Landroid/media/tv/TvView;->-wrap0(Landroid/media/tv/TvView;)V

    #@aa
    .line 1040
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@ac
    invoke-static {v2}, Landroid/media/tv/TvView;->-get5(Landroid/media/tv/TvView;)Ljava/lang/Float;

    #@af
    move-result-object v2

    #@b0
    if-eqz v2, :cond_5

    #@b2
    .line 1041
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@b4
    invoke-static {v2}, Landroid/media/tv/TvView;->-get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    #@b7
    move-result-object v2

    #@b8
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@ba
    invoke-static {v3}, Landroid/media/tv/TvView;->-get5(Landroid/media/tv/TvView;)Ljava/lang/Float;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@c1
    move-result v3

    #@c2
    invoke-virtual {v2, v3}, Landroid/media/tv/TvInputManager$Session;->setStreamVolume(F)V

    #@c5
    .line 1043
    :cond_5
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@c7
    invoke-static {v2}, Landroid/media/tv/TvView;->-get1(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    #@ca
    move-result-object v2

    #@cb
    if-eqz v2, :cond_6

    #@cd
    .line 1044
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@cf
    invoke-static {v2}, Landroid/media/tv/TvView;->-get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    #@d2
    move-result-object v2

    #@d3
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@d5
    invoke-static {v3}, Landroid/media/tv/TvView;->-get1(Landroid/media/tv/TvView;)Ljava/lang/Boolean;

    #@d8
    move-result-object v3

    #@d9
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    #@dc
    move-result v3

    #@dd
    invoke-virtual {v2, v3}, Landroid/media/tv/TvInputManager$Session;->setCaptionEnabled(Z)V

    #@e0
    .line 1046
    :cond_6
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@e2
    invoke-static {v2}, Landroid/media/tv/TvView;->-get3(Landroid/media/tv/TvView;)Landroid/media/tv/TvInputManager$Session;

    #@e5
    move-result-object v2

    #@e6
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->mChannelUri:Landroid/net/Uri;

    #@e8
    iget-object v4, p0, Landroid/media/tv/TvView$MySessionCallback;->mTuneParams:Landroid/os/Bundle;

    #@ea
    invoke-virtual {v2, v3, v4}, Landroid/media/tv/TvInputManager$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@ed
    .line 1047
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@ef
    invoke-static {v2}, Landroid/media/tv/TvView;->-wrap2(Landroid/media/tv/TvView;)V

    #@f2
    .line 1005
    .end local v1    # "command$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    return-void

    #@f3
    .line 1025
    .restart local v1    # "command$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@f4
    monitor-exit v3

    #@f5
    throw v2

    #@f6
    .line 1049
    .end local v1    # "command$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@f8
    invoke-static {v2, v3}, Landroid/media/tv/TvView;->-set3(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    #@fb
    .line 1050
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@fd
    invoke-static {v2}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@100
    move-result-object v2

    #@101
    if-eqz v2, :cond_7

    #@103
    .line 1051
    iget-object v2, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@105
    invoke-static {v2}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@108
    move-result-object v2

    #@109
    iget-object v3, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@10b
    invoke-virtual {v2, v3}, Landroid/media/tv/TvView$TvInputCallback;->onConnectionFailed(Ljava/lang/String;)V

    #@10e
    goto :goto_1
.end method

.method public onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1209
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1210
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onSessionEvent - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1211
    return-void

    #@12
    .line 1213
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1214
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@25
    .line 1205
    :cond_1
    return-void
.end method

.method public onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 3
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1061
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@3
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@6
    move-result-object v0

    #@7
    if-eq p0, v0, :cond_0

    #@9
    .line 1062
    const-string/jumbo v0, "TvView"

    #@c
    const-string/jumbo v1, "onSessionReleased - session not created"

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1063
    return-void

    #@13
    .line 1065
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@15
    const/4 v1, 0x0

    #@16
    invoke-static {v0, v1}, Landroid/media/tv/TvView;->-set0(Landroid/media/tv/TvView;Z)Z

    #@19
    .line 1066
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1b
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-set1(Landroid/media/tv/TvView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@1e
    .line 1067
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@20
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-set3(Landroid/media/tv/TvView;Landroid/media/tv/TvView$MySessionCallback;)Landroid/media/tv/TvView$MySessionCallback;

    #@23
    .line 1068
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@25
    invoke-static {v0, v2}, Landroid/media/tv/TvView;->-set2(Landroid/media/tv/TvView;Landroid/media/tv/TvInputManager$Session;)Landroid/media/tv/TvInputManager$Session;

    #@28
    .line 1069
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2a
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 1070
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@32
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@35
    move-result-object v0

    #@36
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@38
    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onDisconnected(Ljava/lang/String;)V

    #@3b
    .line 1057
    :cond_1
    return-void
.end method

.method public onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 1251
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1252
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onTimeShiftCurrentPositionChanged - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1253
    return-void

    #@12
    .line 1255
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get11(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1256
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get11(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftCurrentPositionChanged(Ljava/lang/String;J)V

    #@25
    .line 1247
    :cond_1
    return-void
.end method

.method public onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    #@0
    .prologue
    .line 1237
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1238
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onTimeShiftStartPositionChanged - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1239
    return-void

    #@12
    .line 1241
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get11(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1242
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get11(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TimeShiftPositionCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TimeShiftPositionCallback;->onTimeShiftStartPositionChanged(Ljava/lang/String;J)V

    #@25
    .line 1233
    :cond_1
    return-void
.end method

.method public onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "status"    # I

    #@0
    .prologue
    .line 1223
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1224
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onTimeShiftStatusChanged - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1225
    return-void

    #@12
    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1228
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTimeShiftStatusChanged(Ljava/lang/String;I)V

    #@25
    .line 1219
    :cond_1
    return-void
.end method

.method public onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1107
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1108
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onTrackSelected - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1109
    return-void

    #@12
    .line 1111
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1112
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V

    #@25
    .line 1103
    :cond_1
    return-void
.end method

.method public onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1093
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1094
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onTracksChanged - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1095
    return-void

    #@12
    .line 1097
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1098
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onTracksChanged(Ljava/lang/String;Ljava/util/List;)V

    #@25
    .line 1089
    :cond_1
    return-void
.end method

.method public onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    #@0
    .prologue
    .line 1135
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1136
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onVideoAvailable - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1137
    return-void

    #@12
    .line 1139
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1140
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1}, Landroid/media/tv/TvView$TvInputCallback;->onVideoAvailable(Ljava/lang/String;)V

    #@25
    .line 1131
    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "width"    # I
    .param p3, "height"    # I

    #@0
    .prologue
    .line 1121
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1122
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onVideoSizeChanged - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1123
    return-void

    #@12
    .line 1125
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1126
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2, p3}, Landroid/media/tv/TvView$TvInputCallback;->onVideoSizeChanged(Ljava/lang/String;II)V

    #@25
    .line 1117
    :cond_1
    return-void
.end method

.method public onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1149
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@2
    invoke-static {v0}, Landroid/media/tv/TvView;->-get4(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$MySessionCallback;

    #@5
    move-result-object v0

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1150
    const-string/jumbo v0, "TvView"

    #@b
    const-string/jumbo v1, "onVideoUnavailable - session not created"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 1151
    return-void

    #@12
    .line 1153
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@14
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_1

    #@1a
    .line 1154
    iget-object v0, p0, Landroid/media/tv/TvView$MySessionCallback;->this$0:Landroid/media/tv/TvView;

    #@1c
    invoke-static {v0}, Landroid/media/tv/TvView;->-get0(Landroid/media/tv/TvView;)Landroid/media/tv/TvView$TvInputCallback;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Landroid/media/tv/TvView$MySessionCallback;->mInputId:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, p2}, Landroid/media/tv/TvView$TvInputCallback;->onVideoUnavailable(Ljava/lang/String;I)V

    #@25
    .line 1145
    :cond_1
    return-void
.end method
