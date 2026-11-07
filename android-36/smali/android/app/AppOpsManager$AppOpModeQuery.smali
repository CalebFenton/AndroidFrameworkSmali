.class final Landroid/app/AppOpsManager$AppOpModeQuery;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppOpModeQuery"
.end annotation


# instance fields
.field final blacklist attributionTag:Ljava/lang/String;

.field final blacklist methodName:Ljava/lang/String;

.field final blacklist op:I

.field final blacklist packageName:Ljava/lang/String;

.field final blacklist uid:I

.field final blacklist virtualDeviceId:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "virtualDeviceId"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "methodName"    # Ljava/lang/String;

    .line 8247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8248
    iput p1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8249
    iput p2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    .line 8250
    iput-object p3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    .line 8251
    iput p4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8252
    iput-object p5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8253
    iput-object p6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    .line 8254
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 8270
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 8271
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 8272
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 8274
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AppOpModeQuery;

    .line 8275
    .local v2, "other":Landroid/app/AppOpsManager$AppOpModeQuery;
    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    if-ne v3, v4, :cond_3d

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    if-ne v3, v4, :cond_3d

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    iget v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    if-ne v3, v4, :cond_3d

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    .line 8277
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 8275
    :goto_3e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 8265
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 8258
    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->op:I

    .line 8259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->packageName:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->virtualDeviceId:I

    .line 8260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->attributionTag:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/AppOpsManager$AppOpModeQuery;->methodName:Ljava/lang/String;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 8258
    const-string v1, "AppOpModeQuery(op=%d, uid=%d, packageName=%s, virtualDeviceId=%d, attributionTag=%s, methodName=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
