.class public final Landroid/os/UserHandle;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserHandle$1;
    }
.end annotation


# static fields
.field public static final ALL:Landroid/os/UserHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/UserHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/UserHandle;

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/UserHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final SYSTEM:Landroid/os/UserHandle;

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field public static final USER_SERIAL_SYSTEM:I

.field public static final USER_SYSTEM:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 39
    new-instance v0, Landroid/os/UserHandle;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@7
    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@9
    .line 45
    new-instance v0, Landroid/os/UserHandle;

    #@b
    const/4 v1, -0x2

    #@c
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@f
    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@11
    .line 55
    new-instance v0, Landroid/os/UserHandle;

    #@13
    const/4 v1, -0x3

    #@14
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@17
    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@19
    .line 72
    new-instance v0, Landroid/os/UserHandle;

    #@1b
    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@1e
    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@20
    .line 81
    new-instance v0, Landroid/os/UserHandle;

    #@22
    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@25
    sput-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@27
    .line 403
    new-instance v0, Landroid/os/UserHandle$1;

    #@29
    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    #@2c
    .line 402
    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "h"    # I

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    #@5
    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@9
    .line 423
    return-void
.end method

.method public static formatUid(I)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 247
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@8
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public static formatUid(Ljava/io/PrintWriter;I)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I

    #@0
    .prologue
    const v3, 0x182b8

    #@3
    const/16 v2, 0x2710

    #@5
    .line 257
    if-ge p1, v2, :cond_0

    #@7
    .line 258
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@a
    .line 256
    :goto_0
    return-void

    #@b
    .line 260
    :cond_0
    const/16 v1, 0x75

    #@d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@10
    .line 261
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@17
    .line 262
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@1a
    move-result v0

    #@1b
    .line 263
    .local v0, "appId":I
    if-lt v0, v3, :cond_1

    #@1d
    const v1, 0x1869f

    #@20
    if-gt v0, v1, :cond_1

    #@22
    .line 264
    const/16 v1, 0x69

    #@24
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@27
    .line 265
    sub-int v1, v0, v3

    #@29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 266
    :cond_1
    if-lt v0, v2, :cond_2

    #@2f
    .line 267
    const/16 v1, 0x61

    #@31
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@34
    .line 268
    add-int/lit16 v1, v0, -0x2710

    #@36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@39
    goto :goto_0

    #@3a
    .line 270
    :cond_2
    const/16 v1, 0x73

    #@3c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3f
    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    #@42
    goto :goto_0
.end method

.method public static formatUid(Ljava/lang/StringBuilder;I)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "uid"    # I

    #@0
    .prologue
    const v3, 0x182b8

    #@3
    const/16 v2, 0x2710

    #@5
    .line 221
    if-ge p1, v2, :cond_0

    #@7
    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    .line 220
    :goto_0
    return-void

    #@b
    .line 224
    :cond_0
    const/16 v1, 0x75

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 225
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 226
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@1a
    move-result v0

    #@1b
    .line 227
    .local v0, "appId":I
    if-lt v0, v3, :cond_1

    #@1d
    const v1, 0x1869f

    #@20
    if-gt v0, v1, :cond_1

    #@22
    .line 228
    const/16 v1, 0x69

    #@24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 229
    sub-int v1, v0, v3

    #@29
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 230
    :cond_1
    if-lt v0, v2, :cond_2

    #@2f
    .line 231
    const/16 v1, 0x61

    #@31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 232
    add-int/lit16 v1, v0, -0x2710

    #@36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 234
    :cond_2
    const/16 v1, 0x73

    #@3c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0
.end method

.method public static getAppId(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 182
    const v0, 0x186a0

    #@3
    rem-int v0, p0, v0

    #@5
    return v0
.end method

.method public static getAppIdFromSharedAppGid(I)I
    .locals 3
    .param p0, "gid"    # I

    #@0
    .prologue
    const v2, 0xc350

    #@3
    .line 207
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v1

    #@7
    add-int/lit16 v1, v1, 0x2710

    #@9
    sub-int v0, v1, v2

    #@b
    .line 209
    .local v0, "appId":I
    if-ltz v0, :cond_0

    #@d
    if-lt v0, v2, :cond_1

    #@f
    .line 210
    :cond_0
    const/4 v1, -0x1

    #@10
    return v1

    #@11
    .line 212
    :cond_1
    return v0
.end method

.method public static getCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getSharedAppGid(I)I
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    .line 198
    const v0, 0x186a0

    #@3
    rem-int v0, p0, v0

    #@5
    const v1, 0xc350

    #@8
    add-int/2addr v0, v1

    #@9
    add-int/lit16 v0, v0, -0x2710

    #@b
    return v0
.end method

.method public static getUid(II)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    #@0
    .prologue
    const v1, 0x186a0

    #@3
    .line 170
    mul-int v0, p0, v1

    #@5
    rem-int v1, p1, v1

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public static getUserGid(I)I
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 190
    const/16 v0, 0x270d

    #@2
    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getUserHandleForUid(I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 138
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 147
    const v0, 0x186a0

    #@3
    div-int v0, p0, v0

    #@5
    return v0
.end method

.method public static isApp(I)Z
    .locals 3
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 124
    if-lez p0, :cond_1

    #@3
    .line 125
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v0

    #@7
    .line 126
    .local v0, "appId":I
    const/16 v2, 0x2710

    #@9
    if-lt v0, v2, :cond_0

    #@b
    const/16 v2, 0x4e1f

    #@d
    if-gt v0, v2, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1

    #@11
    .line 128
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static isIsolated(I)Z
    .locals 3
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 114
    if-lez p0, :cond_1

    #@3
    .line 115
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v0

    #@7
    .line 116
    .local v0, "appId":I
    const v2, 0x182b8

    #@a
    if-lt v0, v2, :cond_0

    #@c
    const v2, 0x1869f

    #@f
    if-gt v0, v2, :cond_0

    #@11
    const/4 v1, 0x1

    #@12
    :cond_0
    return v1

    #@13
    .line 118
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    #@0
    .prologue
    .line 109
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static isSameUser(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    #@0
    .prologue
    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static myUserId()I
    .locals 1

    #@0
    .prologue
    .line 300
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static of(I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 161
    if-nez p0, :cond_0

    #@2
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    new-instance v0, Landroid/os/UserHandle;

    #@7
    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    #@a
    goto :goto_0
.end method

.method public static parseUserArg(Ljava/lang/String;)I
    .locals 5
    .param p0, "arg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 279
    const-string/jumbo v2, "all"

    #@3
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    .line 280
    const/4 v1, -0x1

    #@a
    .line 290
    .local v1, "userId":I
    :goto_0
    return v1

    #@b
    .line 281
    .end local v1    # "userId":I
    :cond_0
    const-string/jumbo v2, "current"

    #@e
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-nez v2, :cond_1

    #@14
    const-string/jumbo v2, "cur"

    #@17
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 282
    :cond_1
    const/4 v1, -0x2

    #@1e
    .restart local v1    # "userId":I
    goto :goto_0

    #@1f
    .line 285
    .end local v1    # "userId":I
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v1

    #@23
    .restart local v1    # "userId":I
    goto :goto_0

    #@24
    .line 286
    .end local v1    # "userId":I
    :catch_0
    move-exception v0

    #@25
    .line 287
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v4, "Bad user number: "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 398
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 399
    .local v0, "h":I
    const/16 v1, -0x2710

    #@6
    if-eq v0, v1, :cond_0

    #@8
    new-instance v1, Landroid/os/UserHandle;

    #@a
    invoke-direct {v1, v0}, Landroid/os/UserHandle;-><init>(I)V

    #@d
    :goto_0
    return-object v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/UserHandle;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "h"    # Landroid/os/UserHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 379
    if-eqz p0, :cond_0

    #@2
    .line 380
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@6
    .line 378
    :goto_0
    return-void

    #@7
    .line 382
    :cond_0
    const/16 v0, -0x2710

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 347
    if-eqz p1, :cond_1

    #@3
    .line 348
    :try_start_0
    move-object v0, p1

    #@4
    check-cast v0, Landroid/os/UserHandle;

    #@6
    move-object v2, v0

    #@7
    .line 349
    .local v2, "other":Landroid/os/UserHandle;
    iget v4, p0, Landroid/os/UserHandle;->mHandle:I

    #@9
    iget v5, v2, Landroid/os/UserHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    if-ne v4, v5, :cond_0

    #@d
    const/4 v3, 0x1

    #@e
    :cond_0
    return v3

    #@f
    .line 351
    .end local v2    # "other":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    #@10
    .line 353
    :cond_1
    return v3
.end method

.method public getIdentifier()I
    .locals 1

    #@0
    .prologue
    .line 336
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 358
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    return v0
.end method

.method public isOwner()Z
    .locals 1

    #@0
    .prologue
    .line 313
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSystem()Z
    .locals 1

    #@0
    .prologue
    .line 322
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "UserHandle{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/os/UserHandle;->mHandle:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "}"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 366
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 365
    return-void
.end method
