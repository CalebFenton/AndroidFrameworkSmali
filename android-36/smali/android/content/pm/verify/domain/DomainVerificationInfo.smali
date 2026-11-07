.class public final Landroid/content/pm/verify/domain/DomainVerificationInfo;
.super Ljava/lang/Object;
.source "DomainVerificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationInfo$State;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/verify/domain/DomainVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_FIRST_VERIFIER_DEFINED:I = 0x400

.field public static final whitelist STATE_MODIFIABLE_UNVERIFIED:I = 0x3

.field public static final whitelist STATE_MODIFIABLE_VERIFIED:I = 0x4

.field public static final whitelist STATE_NO_RESPONSE:I = 0x0

.field public static final whitelist STATE_SUCCESS:I = 0x1

.field public static final whitelist STATE_UNMODIFIABLE:I = 0x2

.field static blacklist sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHostToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdentifier:Ljava/util/UUID;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 321
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;

    .line 322
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    .line 325
    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 326
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    .line 371
    :cond_17
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainVerificationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 354
    .local v0, "identifier":Ljava/util/UUID;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->unparcelHostToStateMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    .line 357
    .local v2, "hostToStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    .line 358
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 360
    iput-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 361
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 363
    iput-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    .line 364
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .param p1, "identifier"    # Ljava/util/UUID;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 219
    .local p3, "hostToStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    .line 221
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 224
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 226
    iput-object p3, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    .line 227
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    return-void
.end method

.method private blacklist parcelHostToStateMap(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 168
    sparse-switch p0, :sswitch_data_1a

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :sswitch_8
    const-string v0, "STATE_FIRST_VERIFIER_DEFINED"

    return-object v0

    .line 178
    :sswitch_b
    const-string v0, "STATE_MODIFIABLE_VERIFIED"

    return-object v0

    .line 176
    :sswitch_e
    const-string v0, "STATE_MODIFIABLE_UNVERIFIED"

    return-object v0

    .line 174
    :sswitch_11
    const-string v0, "STATE_UNMODIFIABLE"

    return-object v0

    .line 172
    :sswitch_14
    const-string v0, "STATE_SUCCESS"

    return-object v0

    .line 170
    :sswitch_17
    const-string v0, "STATE_NO_RESPONSE"

    return-object v0

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_14
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist unparcelHostToStateMap(Landroid/os/Parcel;)Ljava/util/Map;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 133
    invoke-static {p1, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 296
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 297
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 299
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/pm/verify/domain/DomainVerificationInfo;

    .line 301
    .local v2, "that":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    .line 302
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    .line 303
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    .line 304
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 301
    :goto_35
    return v0

    .line 297
    .end local v2    # "that":Landroid/content/pm/verify/domain/DomainVerificationInfo;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getHostToStateMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/util/UUID;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 313
    const/4 v0, 0x1

    .line 314
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 315
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 317
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainVerificationInfo { identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostToStateMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mHostToStateMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 337
    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mIdentifier:Ljava/util/UUID;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 338
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->parcelHostToStateMap(Landroid/os/Parcel;I)V

    .line 340
    return-void
.end method
