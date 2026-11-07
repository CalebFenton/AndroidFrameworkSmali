.class public final Landroid/media/quality/SoundProfile$Builder;
.super Ljava/lang/Object;
.source "SoundProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/SoundProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHandle:Landroid/media/quality/SoundProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mInputId:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParams:Landroid/os/PersistableBundle;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/quality/SoundProfile;)V
    .registers 3
    .param p1, "p"    # Landroid/media/quality/SoundProfile;

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v0

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 299
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    .line 303
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getHandle()Landroid/media/quality/SoundProfileHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 304
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 290
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/quality/SoundProfile;
    .registers 9

    .line 386
    new-instance v0, Landroid/media/quality/SoundProfile;

    iget-object v1, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    iget v2, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    iget-object v3, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    iget-object v7, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/SoundProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V

    .line 394
    .local v0, "o":Landroid/media/quality/SoundProfile;
    return-object v0
.end method

.method public blacklist setHandle(Landroid/media/quality/SoundProfileHandle;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .param p1, "handle"    # Landroid/media/quality/SoundProfileHandle;

    .line 376
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 377
    return-object p0
.end method

.method public whitelist setInputId(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 340
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    .line 341
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 355
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    .line 356
    return-object p0
.end method

.method public whitelist setParameters(Landroid/os/PersistableBundle;)Landroid/media/quality/SoundProfile$Builder;
    .registers 3
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 366
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    .line 367
    return-object p0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 312
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public whitelist setProfileType(I)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 325
    iput p1, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 326
    return-object p0
.end method
