.class public Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedActivityImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedActivity;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist colorMode:I

.field private blacklist configChanges:I

.field private blacklist documentLaunchMode:I

.field private blacklist launchMode:I

.field private blacklist lockTaskLaunchMode:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequireContentUriPermissionFromCaller:I

.field private blacklist mRequiredDisplayCategory:Ljava/lang/String;

.field private blacklist maxAspectRatio:F

.field private blacklist maxRecents:I

.field private blacklist minAspectRatio:F

.field private blacklist parentActivityName:Ljava/lang/String;

.field private blacklist permission:Ljava/lang/String;

.field private blacklist persistableMode:I

.field private blacklist privateFlags:I

.field private blacklist requestedVrComponent:Ljava/lang/String;

.field private blacklist resizeMode:I

.field private blacklist rotationAnimation:I

.field private blacklist screenOrientation:I

.field private blacklist softInputMode:I

.field private blacklist supportsSizeChanges:Z

.field private blacklist targetActivity:Ljava/lang/String;

.field private blacklist taskAffinity:Ljava/lang/String;

.field private blacklist theme:I

.field private blacklist uiOptions:I

.field private blacklist windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 368
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 331
    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 82
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 84
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 85
    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 91
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;IIIIIIIIIFFZLjava/lang/String;IILandroid/content/pm/ActivityInfo$WindowLayout;Ljava/lang/String;I)V
    .registers 43
    .param p1, "theme"    # I
    .param p2, "uiOptions"    # I
    .param p3, "targetActivity"    # Ljava/lang/String;
    .param p4, "parentActivityName"    # Ljava/lang/String;
    .param p5, "taskAffinity"    # Ljava/lang/String;
    .param p6, "privateFlags"    # I
    .param p7, "permission"    # Ljava/lang/String;
    .param p9, "launchMode"    # I
    .param p10, "documentLaunchMode"    # I
    .param p11, "maxRecents"    # I
    .param p12, "configChanges"    # I
    .param p13, "softInputMode"    # I
    .param p14, "persistableMode"    # I
    .param p15, "lockTaskLaunchMode"    # I
    .param p16, "screenOrientation"    # I
    .param p17, "resizeMode"    # I
    .param p18, "maxAspectRatio"    # F
    .param p19, "minAspectRatio"    # F
    .param p20, "supportsSizeChanges"    # Z
    .param p21, "requestedVrComponent"    # Ljava/lang/String;
    .param p22, "rotationAnimation"    # I
    .param p23, "colorMode"    # I
    .param p24, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p25, "requiredDisplayCategory"    # Ljava/lang/String;
    .param p26, "requireContentUriPermissionFromCaller"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIIIIIIIFFZ",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 423
    .local p8, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 81
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 82
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 84
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 85
    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 91
    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 424
    move/from16 v1, p1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 425
    move/from16 v2, p2

    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 426
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 427
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 428
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 429
    move/from16 v6, p6

    iput v6, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 430
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 431
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 432
    move/from16 v9, p9

    iput v9, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 433
    move/from16 v10, p10

    iput v10, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 434
    move/from16 v11, p11

    iput v11, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 435
    move/from16 v12, p12

    iput v12, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 436
    move/from16 v13, p13

    iput v13, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 437
    move/from16 v14, p14

    iput v14, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 438
    move/from16 v15, p15

    iput v15, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 439
    move/from16 v1, p16

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 440
    move/from16 v1, p17

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 441
    move/from16 v1, p18

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 442
    move/from16 v1, p19

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 443
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 444
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 445
    move/from16 v1, p22

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 446
    move/from16 v1, p23

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 447
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 448
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 449
    move/from16 v1, p26

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    .line 452
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 82
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 84
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 85
    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 91
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 342
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 352
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 353
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 360
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 362
    :cond_c3
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    .line 365
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;)V
    .registers 4
    .param p1, "other"    # Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 82
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 84
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 85
    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 91
    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 104
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 105
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 106
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 109
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 110
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 111
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 112
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 113
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 114
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 115
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 116
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 117
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 118
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 119
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 120
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 121
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 122
    iget-boolean v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 123
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 124
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 125
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 126
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 127
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 128
    iget-object v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 129
    iget v0, p1, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    .line 130
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    return-void
.end method

.method static blacklist makeAlias(Ljava/lang/String;Lcom/android/internal/pm/pkg/component/ParsedActivity;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p0, "targetActivityName"    # Ljava/lang/String;
    .param p1, "target"    # Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 167
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 168
    .local v0, "alias":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPackageName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setTargetActivity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 170
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 171
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 172
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 173
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setIcon(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 174
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLogo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLogo(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 175
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getBanner()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setBanner(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 176
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLabelRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setLabelRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 177
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 178
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 179
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 180
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 181
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getDescriptionRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDescriptionRes(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 182
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 183
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 184
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 185
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 186
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 187
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 188
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 189
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 190
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 191
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 192
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 193
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 194
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 195
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 196
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 197
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequiredDisplayCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 198
    nop

    .line 199
    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getRequireContentUriPermissionFromCaller()I

    move-result v1

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    .line 200
    return-object v0
.end method

.method public static blacklist makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uiOptions"    # I
    .param p3, "taskAffinity"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 139
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 140
    .local v0, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    invoke-virtual {v0, p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setPackageName(Ljava/lang/String;)V

    .line 141
    const v1, 0x1030055

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 143
    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 144
    invoke-virtual {v0, p1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 145
    iput p2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 146
    iput-object p3, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 147
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 148
    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 149
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    iput v3, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 150
    invoke-static {v2, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 151
    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 152
    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 153
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 154
    const/4 v3, 0x4

    iput v3, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 155
    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 156
    invoke-virtual {v0, v2}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;

    .line 157
    iput v1, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 158
    iput v2, v0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 159
    if-eqz p4, :cond_4c

    .line 160
    invoke-virtual {v0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;

    .line 162
    :cond_4c
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorMode()I
    .registers 2

    .line 561
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return v0
.end method

.method public blacklist getConfigChanges()I
    .registers 2

    .line 506
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return v0
.end method

.method public blacklist getDocumentLaunchMode()I
    .registers 2

    .line 496
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return v0
.end method

.method public blacklist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    .line 263
    :cond_9
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 262
    :goto_b
    return-object v0
.end method

.method public blacklist getLaunchMode()I
    .registers 2

    .line 491
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return v0
.end method

.method public blacklist getLockTaskLaunchMode()I
    .registers 2

    .line 521
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return v0
.end method

.method public blacklist getMaxAspectRatio()F
    .registers 2

    .line 536
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return v0
.end method

.method public blacklist getMaxRecents()I
    .registers 2

    .line 501
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return v0
.end method

.method public blacklist getMinAspectRatio()F
    .registers 2

    .line 541
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return v0
.end method

.method public blacklist getParentActivityName()Ljava/lang/String;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPermission()Ljava/lang/String;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPersistableMode()I
    .registers 2

    .line 516
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return v0
.end method

.method public blacklist getPrivateFlags()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return v0
.end method

.method public blacklist getRequestedVrComponent()Ljava/lang/String;
    .registers 2

    .line 551
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequireContentUriPermissionFromCaller()I
    .registers 2

    .line 576
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    return v0
.end method

.method public blacklist getRequiredDisplayCategory()Ljava/lang/String;
    .registers 2

    .line 571
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getResizeMode()I
    .registers 2

    .line 531
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return v0
.end method

.method public blacklist getRotationAnimation()I
    .registers 2

    .line 556
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return v0
.end method

.method public blacklist getScreenOrientation()I
    .registers 2

    .line 526
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return v0
.end method

.method public blacklist getSoftInputMode()I
    .registers 2

    .line 511
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return v0
.end method

.method public blacklist getTargetActivity()Ljava/lang/String;
    .registers 2

    .line 466
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTaskAffinity()Ljava/lang/String;
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTheme()I
    .registers 2

    .line 456
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    return v0
.end method

.method public blacklist getUiOptions()I
    .registers 2

    .line 461
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return v0
.end method

.method public blacklist getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 2

    .line 566
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object v0
.end method

.method public blacklist isSupportsSizeChanges()Z
    .registers 2

    .line 546
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return v0
.end method

.method public blacklist setColorMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 695
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 696
    return-object p0
.end method

.method public blacklist setConfigChanges(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 629
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 630
    return-object p0
.end method

.method public blacklist setDocumentLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 617
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 618
    return-object p0
.end method

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p1, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 273
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "knownCert":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v1    # "knownCert":Ljava/lang/String;
    goto :goto_b

    .line 276
    :cond_23
    return-void
.end method

.method public blacklist setLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 611
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 612
    return-object p0
.end method

.method public blacklist setLockTaskLaunchMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 647
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 648
    return-object p0
.end method

.method public blacklist setMaxAspectRatio(F)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # F

    .line 665
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 666
    return-object p0
.end method

.method public blacklist setMaxAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p1, "resizeMode"    # I
    .param p2, "maxAspectRatio"    # F

    .line 217
    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_16

    .line 223
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    .line 225
    return-object p0

    .line 228
    :cond_13
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 229
    return-object p0

    .line 220
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist setMaxRecents(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 623
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 624
    return-object p0
.end method

.method public blacklist setMinAspectRatio(F)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # F

    .line 671
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 672
    return-object p0
.end method

.method public blacklist setMinAspectRatio(IF)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p1, "resizeMode"    # I
    .param p2, "minAspectRatio"    # F

    .line 233
    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_16

    .line 239
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    .line 241
    return-object p0

    .line 244
    :cond_13
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 245
    return-object p0

    .line 236
    :cond_16
    :goto_16
    return-object p0
.end method

.method public blacklist setParentActivityName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 593
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 594
    return-object p0
.end method

.method public blacklist setPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public blacklist setPersistableMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 641
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 642
    return-object p0
.end method

.method public blacklist setPrivateFlags(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 605
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 606
    return-object p0
.end method

.method public blacklist setRequestedVrComponent(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 683
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 684
    return-object p0
.end method

.method public blacklist setRequireContentUriPermissionFromCaller(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 713
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    .line 714
    return-object p0
.end method

.method public blacklist setRequiredDisplayCategory(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 707
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 708
    return-object p0
.end method

.method public blacklist setResizeMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 659
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 660
    return-object p0
.end method

.method public blacklist setRotationAnimation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 689
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 690
    return-object p0
.end method

.method public blacklist setScreenOrientation(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 653
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 654
    return-object p0
.end method

.method public blacklist setSoftInputMode(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 635
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 636
    return-object p0
.end method

.method public blacklist setSupportsSizeChanges(Z)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 677
    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 678
    return-object p0
.end method

.method public blacklist setTargetActivity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 3
    .param p1, "targetActivity"    # Ljava/lang/String;

    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 250
    return-object p0
.end method

.method public blacklist setTaskAffinity(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 599
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 600
    return-object p0
.end method

.method public blacklist setTheme(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 581
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 582
    return-object p0
.end method

.method public blacklist setUiOptions(I)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 587
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 588
    return-object p0
.end method

.method public blacklist setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 701
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 702
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Activity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 295
    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 303
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 313
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 314
    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_90

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_94

    .line 324
    :cond_90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    :goto_94
    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 327
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 328
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedActivityImpl;->mRequireContentUriPermissionFromCaller:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    return-void
.end method
