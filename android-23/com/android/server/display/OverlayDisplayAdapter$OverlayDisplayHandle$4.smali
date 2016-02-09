.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;
.super Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->onWindowCreated(Landroid/graphics/SurfaceTexture;FJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V
    .locals 17
    .param p1, "this$1"    # Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
    .param p2, "this$0"    # Lcom/android/server/display/OverlayDisplayAdapter;
    .param p3, "$anonymous0"    # Landroid/os/IBinder;
    .param p4, "$anonymous1"    # Ljava/lang/String;
    .param p6, "$anonymous3"    # I
    .param p7, "$anonymous4"    # I
    .param p8, "$anonymous5"    # F
    .param p9, "$anonymous6"    # J
    .param p11, "$anonymous7"    # Z
    .param p12, "$anonymous8"    # I
    .param p13, "$anonymous9"    # Landroid/graphics/SurfaceTexture;
    .param p14, "$anonymous10"    # I

    #@0
    .prologue
    .line 402
    .local p5, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    move-object/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-object v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@6
    move-object/from16 v2, p0

    #@8
    move-object/from16 v3, p2

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move/from16 v8, p7

    #@14
    move/from16 v9, p8

    #@16
    move-wide/from16 v10, p9

    #@18
    move/from16 v12, p11

    #@1a
    move/from16 v13, p12

    #@1c
    move-object/from16 v14, p13

    #@1e
    move/from16 v15, p14

    #@20
    invoke-direct/range {v2 .. v15}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;-><init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V

    #@23
    .line 404
    return-void
.end method


# virtual methods
.method public onModeChangedLocked(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;->this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->-wrap0(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;I)V

    #@5
    .line 406
    return-void
.end method
