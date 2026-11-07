.class public final Landroid/adservices/measurement/RegistrationRequest$Builder;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/RegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdIdValue:Ljava/lang/String;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mInputEvent:Landroid/view/InputEvent;

.field private blacklist mIsAdIdPermissionGranted:Z

.field private final blacklist mRegistrationType:I

.field private final blacklist mRegistrationUri:Landroid/net/Uri;

.field private blacklist mRequestTime:J

.field private final blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdIdValue(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mAdIdValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAppPackageName(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputEvent(Landroid/adservices/measurement/RegistrationRequest$Builder;)Landroid/view/InputEvent;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAdIdPermissionGranted(Landroid/adservices/measurement/RegistrationRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mIsAdIdPermissionGranted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationType(Landroid/adservices/measurement/RegistrationRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegistrationUri(Landroid/adservices/measurement/RegistrationRequest$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestTime(Landroid/adservices/measurement/RegistrationRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSdkPackageName(Landroid/adservices/measurement/RegistrationRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mSdkPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "registrationUri"    # Landroid/net/Uri;
    .param p3, "appPackageName"    # Ljava/lang/String;
    .param p4, "sdkPackageName"    # Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    goto :goto_12

    .line 222
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid registrationType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_12
    :goto_12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 227
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 231
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iput p1, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationType:I

    .line 234
    iput-object p2, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationUri:Landroid/net/Uri;

    .line 235
    iput-object p3, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mAppPackageName:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 237
    return-void

    .line 228
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registrationUri must have an HTTPS scheme"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/RegistrationRequest;
    .registers 3

    .line 273
    iget v0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRegistrationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 274
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid registrationType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_13
    :goto_13
    new-instance v0, Landroid/adservices/measurement/RegistrationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/measurement/RegistrationRequest;-><init>(Landroid/adservices/measurement/RegistrationRequest$Builder;Landroid/adservices/measurement/RegistrationRequest-IA;)V

    return-object v0
.end method

.method public blacklist setAdIdPermissionGranted(Z)Landroid/adservices/measurement/RegistrationRequest$Builder;
    .registers 2
    .param p1, "adIdPermissionGranted"    # Z

    .line 256
    iput-boolean p1, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mIsAdIdPermissionGranted:Z

    .line 257
    return-object p0
.end method

.method public blacklist setAdIdValue(Ljava/lang/String;)Landroid/adservices/measurement/RegistrationRequest$Builder;
    .registers 2
    .param p1, "adIdValue"    # Ljava/lang/String;

    .line 263
    iput-object p1, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mAdIdValue:Ljava/lang/String;

    .line 264
    return-object p0
.end method

.method public blacklist setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/measurement/RegistrationRequest$Builder;
    .registers 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 242
    iput-object p1, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    .line 243
    return-object p0
.end method

.method public blacklist setRequestTime(J)Landroid/adservices/measurement/RegistrationRequest$Builder;
    .registers 3
    .param p1, "requestTime"    # J

    .line 249
    iput-wide p1, p0, Landroid/adservices/measurement/RegistrationRequest$Builder;->mRequestTime:J

    .line 250
    return-object p0
.end method
