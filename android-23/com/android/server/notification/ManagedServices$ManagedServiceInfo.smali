.class public Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
.super Ljava/lang/Object;
.source "ManagedServices.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ManagedServiceInfo"
.end annotation


# instance fields
.field public component:Landroid/content/ComponentName;

.field public connection:Landroid/content/ServiceConnection;

.field public isSystem:Z

.field public service:Landroid/os/IInterface;

.field public targetSdkVersion:I

.field final synthetic this$0:Lcom/android/server/notification/ManagedServices;

.field public userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;Landroid/content/ComponentName;IZLandroid/content/ServiceConnection;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ManagedServices;
    .param p2, "service"    # Landroid/os/IInterface;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userid"    # I
    .param p5, "isSystem"    # Z
    .param p6, "connection"    # Landroid/content/ServiceConnection;
    .param p7, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 639
    iput-object p2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@7
    .line 640
    iput-object p3, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@9
    .line 641
    iput p4, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@b
    .line 642
    iput-boolean p5, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@d
    .line 643
    iput-object p6, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@f
    .line 644
    iput p7, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    #@11
    .line 638
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@2
    iget-boolean v0, v0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@8
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    #@a
    const-string/jumbo v1, "binderDied"

    #@d
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@12
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@14
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@16
    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ManagedServices;->-wrap1(Lcom/android/server/notification/ManagedServices;Landroid/os/IInterface;I)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    #@19
    .line 673
    return-void
.end method

.method public enabledAndUserMatches(I)Z
    .locals 4
    .param p1, "nid"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 660
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 661
    return v0

    #@a
    .line 663
    :cond_0
    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@c
    if-ne v1, v2, :cond_1

    #@e
    return v3

    #@f
    .line 664
    :cond_1
    if-eq p1, v2, :cond_2

    #@11
    iget v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@13
    if-ne p1, v1, :cond_3

    #@15
    :cond_2
    return v3

    #@16
    .line 665
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_4

    #@1c
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@1e
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get3(Lcom/android/server/notification/ManagedServices;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    #@25
    move-result v0

    #@26
    :cond_4
    return v0
.end method

.method public isEnabledForCurrentProfiles()Z
    .locals 2

    #@0
    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@8
    if-nez v0, :cond_1

    #@a
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->this$0:Lcom/android/server/notification/ManagedServices;

    #@e
    invoke-static {v0}, Lcom/android/server/notification/ManagedServices;->-get1(Lcom/android/server/notification/ManagedServices;)Landroid/util/ArraySet;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@14
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public supportsProfiles()Z
    .locals 2

    #@0
    .prologue
    .line 669
    iget v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    #@2
    const/16 v1, 0x15

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const-string/jumbo v2, "ManagedServiceInfo["

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    .line 650
    const-string/jumbo v2, "component="

    #@c
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    .line 650
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    #@12
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 651
    const-string/jumbo v2, ",userid="

    #@19
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 651
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    #@1f
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 652
    const-string/jumbo v2, ",isSystem="

    #@26
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 652
    iget-boolean v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    #@2c
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 653
    const-string/jumbo v2, ",targetSdkVersion="

    #@33
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 653
    iget v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    #@39
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 654
    const-string/jumbo v2, ",connection="

    #@40
    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 654
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->connection:Landroid/content/ServiceConnection;

    #@46
    if-nez v2, :cond_0

    #@48
    .line 649
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 655
    const-string/jumbo v1, ",service="

    #@4f
    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 655
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    #@55
    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    .line 656
    const/16 v1, 0x5d

    #@5b
    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    return-object v0

    #@64
    .line 654
    :cond_0
    const-string/jumbo v0, "<connection>"

    #@67
    goto :goto_0
.end method
