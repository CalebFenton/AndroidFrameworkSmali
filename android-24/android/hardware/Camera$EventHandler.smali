.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 1070
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@2
    .line 1071
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 1072
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@7
    .line 1070
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 1077
    iget v5, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v5, :sswitch_data_0

    #@8
    .line 1157
    const-string/jumbo v3, "Camera"

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Unknown message type "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    iget v5, p1, Landroid/os/Message;->what:I

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1158
    return-void

    #@25
    .line 1079
    :sswitch_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@27
    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    #@2a
    move-result-object v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 1080
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@2f
    invoke-static {v3}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    #@32
    move-result-object v3

    #@33
    invoke-interface {v3}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    #@36
    .line 1082
    :cond_0
    return-void

    #@37
    .line 1085
    :sswitch_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@39
    invoke-static {v3}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@3c
    move-result-object v3

    #@3d
    if-eqz v3, :cond_1

    #@3f
    .line 1086
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@41
    invoke-static {v3}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@44
    move-result-object v4

    #@45
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v3, [B

    #@49
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@4b
    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    #@4e
    .line 1088
    :cond_1
    return-void

    #@4f
    .line 1091
    :sswitch_2
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@51
    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@54
    move-result-object v3

    #@55
    if-eqz v3, :cond_2

    #@57
    .line 1092
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@59
    invoke-static {v3}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@5c
    move-result-object v4

    #@5d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5f
    check-cast v3, [B

    #@61
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@63
    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    #@66
    .line 1094
    :cond_2
    return-void

    #@67
    .line 1097
    :sswitch_3
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@69
    invoke-static {v5}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    #@6c
    move-result-object v1

    #@6d
    .line 1098
    .local v1, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v1, :cond_4

    #@6f
    .line 1099
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@71
    invoke-static {v5}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Z

    #@74
    move-result v5

    #@75
    if-eqz v5, :cond_5

    #@77
    .line 1103
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@79
    invoke-static {v3, v6}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    #@7c
    .line 1110
    :cond_3
    :goto_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@7e
    check-cast v3, [B

    #@80
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@82
    invoke-interface {v1, v3, v4}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    #@85
    .line 1112
    :cond_4
    return-void

    #@86
    .line 1104
    :cond_5
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@88
    invoke-static {v5}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Z

    #@8b
    move-result v5

    #@8c
    if-nez v5, :cond_3

    #@8e
    .line 1108
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@90
    invoke-static {v5, v3, v4}, Landroid/hardware/Camera;->-wrap0(Landroid/hardware/Camera;ZZ)V

    #@93
    goto :goto_0

    #@94
    .line 1115
    .end local v1    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@96
    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@99
    move-result-object v3

    #@9a
    if-eqz v3, :cond_6

    #@9c
    .line 1116
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@9e
    invoke-static {v3}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    #@a1
    move-result-object v4

    #@a2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@a4
    check-cast v3, [B

    #@a6
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@a8
    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    #@ab
    .line 1118
    :cond_6
    return-void

    #@ac
    .line 1121
    :sswitch_5
    const/4 v0, 0x0

    #@ad
    .line 1122
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@af
    invoke-static {v3}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Ljava/lang/Object;

    #@b2
    move-result-object v4

    #@b3
    monitor-enter v4

    #@b4
    .line 1123
    :try_start_0
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@b6
    invoke-static {v3}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b9
    move-result-object v0

    #@ba
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    monitor-exit v4

    #@bb
    .line 1125
    if-eqz v0, :cond_7

    #@bd
    .line 1126
    iget v3, p1, Landroid/os/Message;->arg1:I

    #@bf
    if-nez v3, :cond_8

    #@c1
    const/4 v2, 0x0

    #@c2
    .line 1127
    .local v2, "success":Z
    :goto_1
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@c4
    invoke-interface {v0, v2, v3}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    #@c7
    .line 1129
    .end local v2    # "success":Z
    :cond_7
    return-void

    #@c8
    .line 1122
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :catchall_0
    move-exception v3

    #@c9
    monitor-exit v4

    #@ca
    throw v3

    #@cb
    .line 1126
    .local v0, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :cond_8
    const/4 v2, 0x1

    #@cc
    .restart local v2    # "success":Z
    goto :goto_1

    #@cd
    .line 1132
    .end local v0    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    .end local v2    # "success":Z
    :sswitch_6
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@cf
    invoke-static {v5}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    #@d2
    move-result-object v5

    #@d3
    if-eqz v5, :cond_9

    #@d5
    .line 1133
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@d7
    invoke-static {v5}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    #@da
    move-result-object v5

    #@db
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@dd
    iget v7, p1, Landroid/os/Message;->arg2:I

    #@df
    if-eqz v7, :cond_a

    #@e1
    :goto_2
    iget-object v4, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@e3
    invoke-interface {v5, v6, v3, v4}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    #@e6
    .line 1135
    :cond_9
    return-void

    #@e7
    :cond_a
    move v3, v4

    #@e8
    .line 1133
    goto :goto_2

    #@e9
    .line 1138
    :sswitch_7
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@eb
    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    #@ee
    move-result-object v3

    #@ef
    if-eqz v3, :cond_b

    #@f1
    .line 1139
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@f3
    invoke-static {v3}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    #@f6
    move-result-object v4

    #@f7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f9
    check-cast v3, [Landroid/hardware/Camera$Face;

    #@fb
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@fd
    invoke-interface {v4, v3, v5}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    #@100
    .line 1141
    :cond_b
    return-void

    #@101
    .line 1144
    :sswitch_8
    const-string/jumbo v3, "Camera"

    #@104
    new-instance v4, Ljava/lang/StringBuilder;

    #@106
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    const-string/jumbo v5, "Error "

    #@10c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v4

    #@110
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v4

    #@116
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v4

    #@11a
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11d
    .line 1145
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@11f
    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    #@122
    move-result-object v3

    #@123
    if-eqz v3, :cond_c

    #@125
    .line 1146
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@127
    invoke-static {v3}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    #@12a
    move-result-object v3

    #@12b
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@12d
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@12f
    invoke-interface {v3, v4, v5}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    #@132
    .line 1148
    :cond_c
    return-void

    #@133
    .line 1151
    :sswitch_9
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@135
    invoke-static {v5}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@138
    move-result-object v5

    #@139
    if-eqz v5, :cond_d

    #@13b
    .line 1152
    iget-object v5, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    #@13d
    invoke-static {v5}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    #@140
    move-result-object v5

    #@141
    iget v6, p1, Landroid/os/Message;->arg1:I

    #@143
    if-nez v6, :cond_e

    #@145
    :goto_3
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    #@147
    invoke-interface {v5, v4, v3}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    #@14a
    .line 1154
    :cond_d
    return-void

    #@14b
    :cond_e
    move v4, v3

    #@14c
    .line 1152
    goto :goto_3

    #@14d
    .line 1077
    nop

    #@14e
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
    .end sparse-switch
.end method
