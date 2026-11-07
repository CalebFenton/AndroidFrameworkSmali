.class public final Landroid/content/pm/verify/domain/DomainVerificationUserState;
.super Ljava/lang/Object;
.source "DomainVerificationUserState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationUserState$DomainState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/verify/domain/DomainVerificationUserState;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOMAIN_STATE_NONE:I = 0x0

.field public static final whitelist DOMAIN_STATE_SELECTED:I = 0x1

.field public static final whitelist DOMAIN_STATE_VERIFIED:I = 0x2

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

.field private final blacklist mLinkHandlingAllowed:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 292
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;

    .line 293
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    .line 296
    sget-object v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_17

    .line 297
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForUUID;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    .line 355
    :cond_17
    new-instance v0, Landroid/content/pm/verify/domain/DomainVerificationUserState$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainVerificationUserState$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 329
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 330
    .local v1, "linkHandlingAllowed":Z
    :goto_e
    sget-object v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    invoke-interface {v2, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 331
    .local v2, "identifier":Ljava/util/UUID;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 333
    .local v4, "user":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->unparcelHostToStateMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v5

    .line 335
    .local v5, "hostToStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    .line 336
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 338
    iput-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    .line 339
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 341
    iput-object v4, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    .line 342
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 344
    iput-boolean v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    .line 345
    const-class v6, Landroid/annotation/NonNull;

    iget-boolean v7, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    .line 346
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 345
    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 347
    iput-object v5, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    .line 348
    const-class v6, Landroid/annotation/NonNull;

    iget-object v7, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v6, v8, v7}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 352
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/Map;)V
    .registers 9
    .param p1, "identifier"    # Ljava/util/UUID;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "linkHandlingAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p5, "hostToStateMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    .line 191
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 193
    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    .line 194
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 196
    iput-object p3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    .line 197
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 199
    iput-boolean p4, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    .line 200
    const-class v0, Landroid/annotation/NonNull;

    iget-boolean v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    .line 201
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 200
    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 202
    iput-object p5, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    .line 203
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    return-void
.end method

.method public static blacklist domainStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 159
    packed-switch p0, :pswitch_data_12

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :pswitch_8
    const-string v0, "DOMAIN_STATE_VERIFIED"

    return-object v0

    .line 163
    :pswitch_b
    const-string v0, "DOMAIN_STATE_SELECTED"

    return-object v0

    .line 161
    :pswitch_e
    const-string v0, "DOMAIN_STATE_NONE"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist parcelHostToStateMap(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 114
    return-void
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

    .line 118
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 119
    const-class v1, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 118
    invoke-static {p1, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/ClassLoader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 263
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 264
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 266
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;

    .line 268
    .local v2, "that":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    .line 269
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    .line 270
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    .line 271
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-boolean v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    iget-boolean v4, v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    .line 273
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 268
    :goto_45
    return v0

    .line 264
    .end local v2    # "that":Landroid/content/pm/verify/domain/DomainVerificationUserState;
    :cond_46
    :goto_46
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

    .line 238
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/util/UUID;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .registers 2

    .line 222
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 284
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 285
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 286
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 287
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 288
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isLinkHandlingAllowed()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainVerificationUserState { identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linkHandlingAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hostToStateMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mHostToStateMap:Ljava/util/Map;

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
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mLinkHandlingAllowed:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 310
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 311
    sget-object v1, Landroid/content/pm/verify/domain/DomainVerificationUserState;->sParcellingForIdentifier:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mIdentifier:Ljava/util/UUID;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 312
    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationUserState;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 314
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->parcelHostToStateMap(Landroid/os/Parcel;I)V

    .line 315
    return-void
.end method
