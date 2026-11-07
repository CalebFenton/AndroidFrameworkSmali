.class public Landroid/nfc/PackageAndUser;
.super Ljava/lang/Object;
.source "PackageAndUser.java"


# instance fields
.field private blacklist mPackage:Ljava/lang/String;

.field private final blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    .line 32
    iput-object p2, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist describeContents()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    instance-of v1, p1, Landroid/nfc/PackageAndUser;

    if-eqz v1, :cond_22

    .line 59
    move-object v1, p1

    check-cast v1, Landroid/nfc/PackageAndUser;

    .line 60
    .local v1, "other":Landroid/nfc/PackageAndUser;
    invoke-virtual {v1}, Landroid/nfc/PackageAndUser;->getUserId()I

    move-result v2

    iget v3, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    if-ne v2, v3, :cond_20

    .line 61
    invoke-virtual {v1}, Landroid/nfc/PackageAndUser;->getPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    nop

    .line 60
    :goto_21
    return v0

    .line 63
    .end local v1    # "other":Landroid/nfc/PackageAndUser;
    :cond_22
    return v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 44
    iget v0, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 69
    iget v0, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    return v0

    .line 71
    :cond_7
    iget-object v0, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/nfc/PackageAndUser;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for user id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nfc/PackageAndUser;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
