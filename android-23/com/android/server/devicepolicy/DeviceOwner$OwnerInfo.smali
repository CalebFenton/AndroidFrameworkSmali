.class Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;
.super Ljava/lang/Object;
.source "DeviceOwner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DeviceOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OwnerInfo"
.end annotation


# instance fields
.field public final admin:Landroid/content/ComponentName;

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "admin"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 406
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@5
    .line 407
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@7
    .line 408
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@d
    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 400
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@5
    .line 401
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->packageName:Ljava/lang/String;

    #@7
    .line 402
    new-instance v0, Landroid/content/ComponentName;

    #@9
    const-string/jumbo v1, ""

    #@c
    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@11
    .line 399
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "admin="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->admin:Landroid/content/ComponentName;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, "name="

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceOwner$OwnerInfo;->name:Ljava/lang/String;

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 413
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@3d
    .line 410
    return-void
.end method
