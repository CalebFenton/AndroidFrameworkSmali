.class public Landroid/view/RemoteAnimationTarget;
.super Ljava/lang/Object;
.source "RemoteAnimationTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAnimationTarget$Mode;
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MODE_CHANGING:I = 0x2

.field public static final greylist-max-o MODE_CLOSING:I = 0x1

.field public static final greylist-max-o MODE_OPENING:I


# instance fields
.field public greylist allowEnterPip:Z

.field public blacklist backgroundColor:I

.field public final greylist clipRect:Landroid/graphics/Rect;

.field public final greylist contentInsets:Landroid/graphics/Rect;

.field public blacklist hasAnimatingParent:Z

.field public greylist isNotInRecents:Z

.field public final greylist isTranslucent:Z

.field public final greylist leash:Landroid/view/SurfaceControl;

.field public final blacklist localBounds:Landroid/graphics/Rect;

.field public final greylist mode:I

.field public final greylist position:Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final greylist prefixOrderIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public blacklist rotationChange:I

.field public final blacklist screenSpaceBounds:Landroid/graphics/Rect;

.field public blacklist showBackdrop:Z

.field public final greylist sourceContainerBounds:Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final greylist-max-r startBounds:Landroid/graphics/Rect;

.field public final greylist-max-r startLeash:Landroid/view/SurfaceControl;

.field public final greylist taskId:I

.field public blacklist taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public blacklist willShowImeOnTarget:Z

.field public final greylist windowConfiguration:Landroid/app/WindowConfiguration;

.field public final blacklist windowType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 427
    new-instance v0, Landroid/view/RemoteAnimationTarget$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationTarget$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .registers 35
    .param p1, "taskId"    # I
    .param p2, "mode"    # I
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "isTranslucent"    # Z
    .param p5, "clipRect"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "prefixOrderIndex"    # I
    .param p8, "position"    # Landroid/graphics/Point;
    .param p9, "localBounds"    # Landroid/graphics/Rect;
    .param p10, "screenSpaceBounds"    # Landroid/graphics/Rect;
    .param p11, "windowConfig"    # Landroid/app/WindowConfiguration;
    .param p12, "isNotInRecents"    # Z
    .param p13, "startLeash"    # Landroid/view/SurfaceControl;
    .param p14, "startBounds"    # Landroid/graphics/Rect;
    .param p15, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p16, "allowEnterPip"    # Z

    .line 260
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v17}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 263
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .registers 34
    .param p1, "taskId"    # I
    .param p2, "mode"    # I
    .param p3, "leash"    # Landroid/view/SurfaceControl;
    .param p4, "isTranslucent"    # Z
    .param p5, "clipRect"    # Landroid/graphics/Rect;
    .param p6, "contentInsets"    # Landroid/graphics/Rect;
    .param p7, "prefixOrderIndex"    # I
    .param p8, "position"    # Landroid/graphics/Point;
    .param p9, "localBounds"    # Landroid/graphics/Rect;
    .param p10, "screenSpaceBounds"    # Landroid/graphics/Rect;
    .param p11, "windowConfig"    # Landroid/app/WindowConfiguration;
    .param p12, "isNotInRecents"    # Z
    .param p13, "startLeash"    # Landroid/view/SurfaceControl;
    .param p14, "startBounds"    # Landroid/graphics/Rect;
    .param p15, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p16, "allowEnterPip"    # Z
    .param p17, "windowType"    # I

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p10

    move-object/from16 v3, p14

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 272
    move/from16 v4, p2

    iput v4, v0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 273
    move/from16 v5, p1

    iput v5, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 274
    move-object/from16 v6, p3

    iput-object v6, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 275
    move/from16 v7, p4

    iput-boolean v7, v0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 276
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v9, p5

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 277
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v10, p6

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v8, v0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 278
    move/from16 v8, p7

    iput v8, v0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    .line 279
    new-instance v11, Landroid/graphics/Point;

    if-nez v1, :cond_39

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    goto :goto_3c

    :cond_39
    invoke-direct {v11, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_3c
    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 280
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v12, p9

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 281
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 282
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 283
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 284
    move/from16 v13, p12

    iput-boolean v13, v0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    .line 285
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    .line 286
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 287
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    .line 288
    move/from16 v1, p17

    iput v1, v0, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 290
    if-nez v3, :cond_75

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_7a

    .line 292
    :cond_75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_7a
    iput-object v1, v0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    .line 293
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    .line 298
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    .line 299
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    .line 300
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const-string v1, "RemoteAnimationTarget[leash]"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 302
    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    .line 303
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    .line 304
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    .line 306
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    .line 307
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    .line 308
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 309
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 310
    sget-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WindowConfiguration;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    .line 312
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    .line 313
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_91

    .line 314
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    const-string v1, "RemoteAnimationTarget[startLeash]"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 316
    :cond_91
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    .line 317
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->showBackdrop:Z

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    .line 325
    return-void
.end method

.method private static blacklist printPoint(Landroid/graphics/Point;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "p"    # Landroid/graphics/Point;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 424
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 380
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 381
    const-string v0, " taskId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 382
    const-string v0, " isTranslucent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 383
    const-string v0, " clipRect="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 384
    const-string v0, " contentInsets="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 385
    const-string v0, " prefixOrderIndex="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 386
    const-string v0, " position="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    invoke-static {v0, p1}, Landroid/view/RemoteAnimationTarget;->printPoint(Landroid/graphics/Point;Ljava/io/PrintWriter;)V

    .line 387
    const-string v0, " sourceContainerBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 388
    const-string v0, " screenSpaceBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 389
    const-string v0, " localBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 390
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "leash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "taskInfo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "allowEnterPip="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasAnimatingParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "backgroundColor="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showBackdrop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->showBackdrop:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "willShowImeOnTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 400
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 403
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 404
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 405
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 406
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 407
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 408
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 409
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 410
    const-wide v2, 0x10500000007L

    iget v4, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 411
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    const-wide v3, 0x10b00000008L

    invoke-static {v2, p1, v3, v4}, Landroid/graphics/GraphicsProtos;->dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V

    .line 412
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 413
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000eL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 414
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 415
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/WindowConfiguration;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 416
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_8a

    .line 417
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 419
    :cond_8a
    iget-object v2, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 420
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 421
    return-void
.end method

.method public blacklist getRotationChange()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    return v0
.end method

.method public blacklist setRotationChange(I)V
    .registers 2
    .param p1, "rotationChange"    # I

    .line 340
    iput p1, p0, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    .line 341
    return-void
.end method

.method public blacklist setShowBackdrop(Z)V
    .registers 2
    .param p1, "shouldShowBackdrop"    # Z

    .line 328
    iput-boolean p1, p0, Landroid/view/RemoteAnimationTarget;->showBackdrop:Z

    .line 329
    return-void
.end method

.method public blacklist setWillShowImeOnTarget(Z)V
    .registers 2
    .param p1, "showImeOnTarget"    # Z

    .line 332
    iput-boolean p1, p0, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    .line 333
    return-void
.end method

.method public blacklist willShowImeOnTarget()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 354
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 358
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 359
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 364
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 365
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 366
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 367
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 368
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    iget-object v0, p0, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 371
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->windowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->hasAnimatingParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->showBackdrop:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    iget-boolean v0, p0, Landroid/view/RemoteAnimationTarget;->willShowImeOnTarget:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 376
    iget v0, p0, Landroid/view/RemoteAnimationTarget;->rotationChange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    return-void
.end method
