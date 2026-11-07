.class public final Landroid/permission/PermissionGroupUsage;
.super Ljava/lang/Object;
.source "PermissionGroupUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/permission/PermissionGroupUsage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActive:Z

.field private final blacklist mAttributionLabel:Ljava/lang/CharSequence;

.field private final blacklist mAttributionTag:Ljava/lang/CharSequence;

.field private final blacklist mLastAccessTimeMillis:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPermissionGroupName:Ljava/lang/String;

.field private final blacklist mPersistentDeviceId:Ljava/lang/String;

.field private final blacklist mPhoneCall:Z

.field private final blacklist mProxyLabel:Ljava/lang/CharSequence;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 317
    new-instance v0, Landroid/permission/PermissionGroupUsage$1;

    invoke-direct {v0}, Landroid/permission/PermissionGroupUsage$1;-><init>()V

    sput-object v0, Landroid/permission/PermissionGroupUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 18
    .param p1, "in"    # Landroid/os/Parcel;

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .local v1, "flg":I
    and-int/lit8 v2, v1, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_12

    :cond_11
    move v2, v4

    .line 286
    .local v2, "active":Z
    :goto_12
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_17

    goto :goto_18

    :cond_17
    move v3, v4

    .line 287
    .local v3, "phoneCall":Z
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 289
    .local v5, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 290
    .local v6, "lastAccessTimeMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 291
    .local v8, "permissionGroupName":Ljava/lang/String;
    and-int/lit8 v9, v1, 0x40

    const/4 v10, 0x0

    if-nez v9, :cond_2f

    move-object v9, v10

    goto :goto_33

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v9

    .line 292
    .local v9, "attributionTag":Ljava/lang/CharSequence;
    :goto_33
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_39

    move-object v11, v10

    goto :goto_3d

    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v11

    .line 293
    .local v11, "attributionLabel":Ljava/lang/CharSequence;
    :goto_3d
    and-int/lit16 v12, v1, 0x100

    if-nez v12, :cond_43

    move-object v12, v10

    goto :goto_47

    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v12

    .line 294
    .local v12, "proxyLabel":Ljava/lang/CharSequence;
    :goto_47
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, "persistentDeviceId":Ljava/lang/String;
    iput-object v4, v0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 297
    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 299
    iput v5, v0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 300
    iput-wide v6, v0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 301
    iput-object v8, v0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 302
    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 304
    iput-boolean v2, v0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 305
    iput-boolean v3, v0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 306
    iput-object v9, v0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 307
    iput-object v11, v0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 308
    iput-object v12, v0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 309
    iput-object v13, v0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 310
    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v14, v10, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IJLjava/lang/String;ZZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "lastAccessTimeMillis"    # J
    .param p5, "permissionGroupName"    # Ljava/lang/String;
    .param p6, "active"    # Z
    .param p7, "phoneCall"    # Z
    .param p8, "attributionTag"    # Ljava/lang/CharSequence;
    .param p9, "attributionLabel"    # Ljava/lang/CharSequence;
    .param p10, "proxyLabel"    # Ljava/lang/CharSequence;
    .param p11, "persistentDeviceId"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 87
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 89
    iput p2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    .line 90
    iput-wide p3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    .line 91
    iput-object p5, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 92
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 94
    iput-boolean p6, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    .line 95
    iput-boolean p7, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    .line 96
    iput-object p8, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 97
    iput-object p9, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 98
    iput-object p10, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 99
    iput-object p11, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 100
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 213
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6e

    .line 215
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/permission/PermissionGroupUsage;

    .line 217
    .local v2, "that":Landroid/permission/PermissionGroupUsage;
    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    .line 218
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget v3, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    iget v4, v2, Landroid/permission/PermissionGroupUsage;->mUid:I

    if-ne v3, v4, :cond_6c

    iget-wide v3, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    iget-wide v5, v2, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6c

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    .line 221
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-ne v3, v4, :cond_6c

    iget-boolean v3, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    iget-boolean v4, v2, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    .line 224
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    .line 225
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    .line 226
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    .line 227
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_6d

    :cond_6c
    move v0, v1

    .line 217
    :goto_6d
    return v0

    .line 213
    .end local v2    # "that":Landroid/permission/PermissionGroupUsage;
    :cond_6e
    :goto_6e
    return v1
.end method

.method public whitelist getAttributionLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getAttributionTag()Ljava/lang/CharSequence;
    .registers 2

    .line 160
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getLastAccessTimeMillis()J
    .registers 3

    .line 128
    iget-wide v0, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    return-wide v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPermissionGroupName()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersistentDeviceId()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProxyLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 119
    iget v0, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 238
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    add-int/2addr v0, v2

    .line 239
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 240
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 241
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 242
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 243
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 244
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 245
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isActive()Z
    .registers 2

    .line 144
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    return v0
.end method

.method public whitelist isPhoneCall()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionGroupUsage { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastAccessTimeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissionGroupName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", active = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxyLabel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentDeviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mActive:Z

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x10

    .line 258
    :cond_7
    iget-boolean v1, p0, Landroid/permission/PermissionGroupUsage;->mPhoneCall:Z

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x20

    .line 259
    :cond_d
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x40

    .line 260
    :cond_13
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_19

    or-int/lit16 v0, v0, 0x80

    .line 261
    :cond_19
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    or-int/lit16 v0, v0, 0x100

    .line 262
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget v1, p0, Landroid/permission/PermissionGroupUsage;->mUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-wide v1, p0, Landroid/permission/PermissionGroupUsage;->mLastAccessTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPermissionGroupName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionTag:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 268
    :cond_3f
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mAttributionLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 269
    :cond_48
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_51

    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mProxyLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 270
    :cond_51
    iget-object v1, p0, Landroid/permission/PermissionGroupUsage;->mPersistentDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return-void
.end method
