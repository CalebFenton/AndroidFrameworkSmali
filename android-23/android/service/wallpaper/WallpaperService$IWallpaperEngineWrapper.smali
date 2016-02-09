.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mDisplayPadding:Landroid/graphics/Rect;

.field mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field mShownReported:Z

.field final mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static synthetic -get0(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "this$0"    # Landroid/service/wallpaper/WallpaperService;
    .param p2, "context"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowType"    # I
    .param p6, "isPreview"    # Z
    .param p7, "reqWidth"    # I
    .param p8, "reqHeight"    # I
    .param p9, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1087
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@2
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    #@5
    .line 1083
    new-instance v1, Landroid/graphics/Rect;

    #@7
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@a
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@c
    .line 1090
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    #@e
    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x1

    #@13
    invoke-direct {v1, p2, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    #@16
    iput-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@18
    .line 1091
    iput-object p3, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@1a
    .line 1092
    iput-object p4, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    #@1c
    .line 1093
    iput p5, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    #@1e
    .line 1094
    iput-boolean p6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    #@20
    .line 1095
    iput p7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    #@22
    .line 1096
    iput p8, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    #@24
    .line 1097
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v1, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@29
    .line 1099
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2b
    const/16 v2, 0xa

    #@2d
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@30
    move-result-object v0

    #@31
    .line 1100
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@33
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@36
    .line 1089
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    #@0
    .prologue
    .line 1147
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/16 v2, 0x14

    #@4
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1148
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1146
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1120
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1121
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@6
    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->-wrap0(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    #@9
    .line 1119
    :goto_0
    return-void

    #@a
    .line 1123
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@d
    goto :goto_0
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1129
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1130
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@6
    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    #@8
    const/4 v6, 0x0

    #@9
    move-object v1, p1

    #@a
    move v2, p2

    #@b
    move v3, p3

    #@c
    move v4, p4

    #@d
    move-object v5, p5

    #@e
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/BaseIWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    #@11
    .line 1128
    :cond_0
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 1152
    iget v6, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v6, :sswitch_data_0

    #@7
    .line 1222
    const-string/jumbo v6, "WallpaperService"

    #@a
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v8, "Unknown message type "

    #@12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    iget v8, p1, Landroid/os/Message;->what:I

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v7

    #@1c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v7

    #@20
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 1151
    :goto_0
    :sswitch_0
    return-void

    #@24
    .line 1155
    :sswitch_1
    :try_start_0
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@26
    invoke-interface {v6, p0}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1160
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@2b
    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    #@2e
    move-result-object v2

    #@2f
    .line 1161
    .local v2, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    iput-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@31
    .line 1162
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@33
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->-get0(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 1163
    invoke-virtual {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    #@3d
    .line 1164
    return-void

    #@3e
    .line 1156
    .end local v2    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :catch_0
    move-exception v1

    #@3f
    .line 1157
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "WallpaperService"

    #@42
    const-string/jumbo v7, "Wallpaper host disappeared"

    #@45
    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 1158
    return-void

    #@49
    .line 1167
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_2
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->this$0:Landroid/service/wallpaper/WallpaperService;

    #@4b
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->-get0(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    #@4e
    move-result-object v6

    #@4f
    iget-object v7, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@51
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@54
    .line 1168
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@56
    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    #@59
    .line 1169
    return-void

    #@5a
    .line 1172
    :sswitch_3
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@5c
    iget v7, p1, Landroid/os/Message;->arg1:I

    #@5e
    iget v8, p1, Landroid/os/Message;->arg2:I

    #@60
    invoke-virtual {v6, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    #@63
    .line 1173
    return-void

    #@64
    .line 1176
    :sswitch_4
    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@66
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@68
    check-cast v6, Landroid/graphics/Rect;

    #@6a
    invoke-virtual {v9, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doDisplayPaddingChanged(Landroid/graphics/Rect;)V

    #@6d
    .line 1179
    :sswitch_5
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@6f
    invoke-virtual {v6, v7, v8, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@72
    goto :goto_0

    #@73
    .line 1184
    :sswitch_6
    iget-object v9, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@75
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@77
    if-eqz v6, :cond_0

    #@79
    move v6, v7

    #@7a
    :goto_1
    invoke-virtual {v9, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    #@7d
    goto :goto_0

    #@7e
    :cond_0
    move v6, v8

    #@7f
    goto :goto_1

    #@80
    .line 1187
    :sswitch_7
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@82
    invoke-virtual {v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@85
    goto :goto_0

    #@86
    .line 1190
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@88
    check-cast v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    #@8a
    .line 1191
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@8c
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    #@8f
    goto :goto_0

    #@90
    .line 1194
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    :sswitch_9
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@92
    if-eqz v6, :cond_1

    #@94
    const/4 v4, 0x1

    #@95
    .line 1195
    .local v4, "reportDraw":Z
    :goto_2
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@97
    iget-object v9, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mOutsets:Landroid/graphics/Rect;

    #@99
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9b
    check-cast v6, Landroid/graphics/Rect;

    #@9d
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a0
    .line 1196
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@a2
    invoke-virtual {v6, v7, v8, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    #@a5
    .line 1197
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@a7
    invoke-virtual {v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 1194
    .end local v4    # "reportDraw":Z
    :cond_1
    const/4 v4, 0x0

    #@ad
    .restart local v4    # "reportDraw":Z
    goto :goto_2

    #@ae
    .line 1203
    .end local v4    # "reportDraw":Z
    :sswitch_a
    const/4 v5, 0x0

    #@af
    .line 1204
    .local v5, "skip":Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@b1
    check-cast v3, Landroid/view/MotionEvent;

    #@b3
    .line 1205
    .local v3, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    #@b6
    move-result v6

    #@b7
    const/4 v7, 0x2

    #@b8
    if-ne v6, v7, :cond_2

    #@ba
    .line 1206
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@bc
    iget-object v7, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    #@be
    monitor-enter v7

    #@bf
    .line 1207
    :try_start_1
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c1
    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    #@c3
    if-ne v6, v3, :cond_4

    #@c5
    .line 1208
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@c7
    const/4 v8, 0x0

    #@c8
    iput-object v8, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ca
    :goto_3
    monitor-exit v7

    #@cb
    .line 1215
    :cond_2
    if-nez v5, :cond_3

    #@cd
    .line 1217
    iget-object v6, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    #@cf
    invoke-virtual {v6, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    #@d2
    .line 1219
    :cond_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@d5
    goto/16 :goto_0

    #@d7
    .line 1211
    :cond_4
    const/4 v5, 0x1

    #@d8
    goto :goto_3

    #@d9
    .line 1206
    :catchall_0
    move-exception v6

    #@da
    monitor-exit v7

    #@db
    throw v6

    #@dc
    .line 1152
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x2710 -> :sswitch_5
        0x271a -> :sswitch_6
        0x2724 -> :sswitch_7
        0x2729 -> :sswitch_8
        0x272e -> :sswitch_9
        0x2733 -> :sswitch_0
        0x2738 -> :sswitch_a
    .end sparse-switch
.end method

.method public reportShown()V
    .locals 3

    #@0
    .prologue
    .line 1135
    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1136
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    #@7
    .line 1138
    :try_start_0
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    #@9
    invoke-interface {v1, p0}, Landroid/service/wallpaper/IWallpaperConnection;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 1134
    :cond_0
    return-void

    #@d
    .line 1139
    :catch_0
    move-exception v0

    #@e
    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "WallpaperService"

    #@11
    const-string/jumbo v2, "Wallpaper host disappeared"

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    .line 1141
    return-void
.end method

.method public setDesiredSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 1104
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/16 v2, 0x1e

    #@4
    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1105
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1103
    return-void
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1109
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    const/16 v2, 0x28

    #@4
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1110
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@a
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@d
    .line 1108
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1114
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@2
    .line 1115
    if-eqz p1, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1114
    :goto_0
    const/16 v3, 0x271a

    #@7
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 1116
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    #@d
    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    #@10
    .line 1113
    return-void

    #@11
    .line 1115
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    #@12
    goto :goto_0
.end method
