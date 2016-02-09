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

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I

.field private static final userHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 37
    new-instance v0, Landroid/os/UserHandle;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@6
    sput-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@8
    .line 43
    new-instance v0, Landroid/os/UserHandle;

    #@a
    const/4 v1, -0x2

    #@b
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@e
    sput-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@10
    .line 53
    new-instance v0, Landroid/os/UserHandle;

    #@12
    const/4 v1, -0x3

    #@13
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@16
    sput-object v0, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    #@18
    .line 62
    new-instance v0, Landroid/os/UserHandle;

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@1e
    sput-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@20
    .line 72
    new-instance v0, Landroid/util/SparseArray;

    #@22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@25
    sput-object v0, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    #@27
    .line 353
    new-instance v0, Landroid/os/UserHandle$1;

    #@29
    invoke-direct {v0}, Landroid/os/UserHandle$1;-><init>()V

    #@2c
    .line 352
    sput-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e
    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "h"    # I

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 277
    iput p1, p0, Landroid/os/UserHandle;->mHandle:I

    #@5
    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@9
    .line 373
    return-void
.end method

.method public static formatUid(I)Ljava/lang/String;
    .locals 2
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 226
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    #@8
    .line 227
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
    .line 236
    if-ge p1, v2, :cond_0

    #@7
    .line 237
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    #@a
    .line 235
    :goto_0
    return-void

    #@b
    .line 239
    :cond_0
    const/16 v1, 0x75

    #@d
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@10
    .line 240
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@17
    .line 241
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@1a
    move-result v0

    #@1b
    .line 242
    .local v0, "appId":I
    if-lt v0, v3, :cond_1

    #@1d
    const v1, 0x1869f

    #@20
    if-gt v0, v1, :cond_1

    #@22
    .line 243
    const/16 v1, 0x69

    #@24
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@27
    .line 244
    sub-int v1, v0, v3

    #@29
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 245
    :cond_1
    if-lt v0, v2, :cond_2

    #@2f
    .line 246
    const/16 v1, 0x61

    #@31
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@34
    .line 247
    add-int/lit16 v1, v0, -0x2710

    #@36
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    #@39
    goto :goto_0

    #@3a
    .line 249
    :cond_2
    const/16 v1, 0x73

    #@3c
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    #@3f
    .line 250
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
    .line 200
    if-ge p1, v2, :cond_0

    #@7
    .line 201
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a
    .line 199
    :goto_0
    return-void

    #@b
    .line 203
    :cond_0
    const/16 v1, 0x75

    #@d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 204
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    #@13
    move-result v1

    #@14
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    .line 205
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    #@1a
    move-result v0

    #@1b
    .line 206
    .local v0, "appId":I
    if-lt v0, v3, :cond_1

    #@1d
    const v1, 0x1869f

    #@20
    if-gt v0, v1, :cond_1

    #@22
    .line 207
    const/16 v1, 0x69

    #@24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@27
    .line 208
    sub-int v1, v0, v3

    #@29
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_0

    #@2d
    .line 209
    :cond_1
    if-lt v0, v2, :cond_2

    #@2f
    .line 210
    const/16 v1, 0x61

    #@31
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 211
    add-int/lit16 v1, v0, -0x2710

    #@36
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 213
    :cond_2
    const/16 v1, 0x73

    #@3c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3f
    .line 214
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    goto :goto_0
.end method

.method public static final getAppId(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 161
    const v0, 0x186a0

    #@3
    rem-int v0, p0, v0

    #@5
    return v0
.end method

.method public static final getAppIdFromSharedAppGid(I)I
    .locals 4
    .param p0, "gid"    # I

    #@0
    .prologue
    const v2, 0xc350

    #@3
    .line 186
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v0

    #@7
    .line 187
    .local v0, "noUserGid":I
    if-lt v0, v2, :cond_0

    #@9
    .line 188
    const v1, 0xea5f

    #@c
    if-le v0, v1, :cond_1

    #@e
    .line 189
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " is not a shared app gid"

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 191
    :cond_1
    add-int/lit16 v1, v0, 0x2710

    #@2e
    sub-int/2addr v1, v2

    #@2f
    return v1
.end method

.method public static final getCallingUserHandle()Landroid/os/UserHandle;
    .locals 3

    #@0
    .prologue
    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v2

    #@4
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@7
    move-result v1

    #@8
    .line 135
    .local v1, "userId":I
    sget-object v2, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    #@a
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/UserHandle;

    #@10
    .line 137
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-nez v0, :cond_0

    #@12
    .line 138
    new-instance v0, Landroid/os/UserHandle;

    #@14
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@17
    .line 139
    .restart local v0    # "userHandle":Landroid/os/UserHandle;
    sget-object v2, Landroid/os/UserHandle;->userHandles:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1c
    .line 141
    :cond_0
    return-object v0
.end method

.method public static final getCallingUserId()I
    .locals 1

    #@0
    .prologue
    .line 129
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

.method public static final getSharedAppGid(I)I
    .locals 2
    .param p0, "id"    # I

    #@0
    .prologue
    .line 177
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

.method public static final getUid(II)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    #@0
    .prologue
    const v1, 0x186a0

    #@3
    .line 150
    mul-int v0, p0, v1

    #@5
    rem-int v1, p1, v1

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public static final getUserGid(I)I
    .locals 1
    .param p0, "userId"    # I

    #@0
    .prologue
    .line 169
    const/16 v0, 0x270d

    #@2
    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static final getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 121
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
    .line 107
    if-lez p0, :cond_1

    #@3
    .line 108
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v0

    #@7
    .line 109
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
    .line 111
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static final isIsolated(I)Z
    .locals 3
    .param p0, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    if-lez p0, :cond_1

    #@3
    .line 98
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    #@6
    move-result v0

    #@7
    .line 99
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
    .line 101
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static final isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    #@0
    .prologue
    .line 92
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

.method public static final isSameUser(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    #@0
    .prologue
    .line 80
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

.method public static final myUserId()I
    .locals 1

    #@0
    .prologue
    .line 262
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

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 349
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
    .line 329
    if-eqz p0, :cond_0

    #@2
    .line 330
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    #@6
    .line 328
    :goto_0
    return-void

    #@7
    .line 332
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
    .line 312
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
    .line 297
    if-eqz p1, :cond_1

    #@3
    .line 298
    :try_start_0
    move-object v0, p1

    #@4
    check-cast v0, Landroid/os/UserHandle;

    #@6
    move-object v2, v0

    #@7
    .line 299
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
    .line 301
    .end local v2    # "other":Landroid/os/UserHandle;
    :catch_0
    move-exception v1

    #@10
    .line 303
    :cond_1
    return v3
.end method

.method public getIdentifier()I
    .locals 1

    #@0
    .prologue
    .line 286
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 308
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    return v0
.end method

.method public final isOwner()Z
    .locals 1

    #@0
    .prologue
    .line 272
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

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
    .line 291
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
    .line 316
    iget v0, p0, Landroid/os/UserHandle;->mHandle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 315
    return-void
.end method
