.class public Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;
.super Ljava/lang/Object;
.source "PackageRollbackInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/PackageRollbackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreInfo"
.end annotation


# instance fields
.field public final blacklist appId:I

.field public final blacklist seInfo:Ljava/lang/String;

.field public final blacklist userId:I


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "appId"    # I
    .param p3, "seInfo"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->userId:I

    .line 53
    iput p2, p0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->appId:I

    .line 54
    iput-object p3, p0, Landroid/content/rollback/PackageRollbackInfo$RestoreInfo;->seInfo:Ljava/lang/String;

    .line 55
    return-void
.end method
