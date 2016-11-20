.class Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceOwnerReadWriter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method protected constructor <init>(Lcom/android/server/devicepolicy/Owners;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/Owners;

    #@0
    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@2
    .line 590
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerFileWithTestOverride()Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    #@9
    .line 589
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 616
    const/4 v2, 0x2

    #@3
    if-le p2, v2, :cond_0

    #@5
    .line 617
    return v6

    #@6
    .line 619
    :cond_0
    const-string/jumbo v2, "device-owner"

    #@9
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 621
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@11
    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/Owners;->-set0(Lcom/android/server/devicepolicy/Owners;Lcom/android/server/devicepolicy/Owners$OwnerInfo;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@18
    .line 622
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@1a
    invoke-static {v2, v5}, Lcom/android/server/devicepolicy/Owners;->-set1(Lcom/android/server/devicepolicy/Owners;I)I

    #@1d
    .line 645
    :cond_1
    :goto_0
    return v6

    #@1e
    .line 619
    :cond_2
    const-string/jumbo v2, "device-owner-context"

    #@21
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_3

    #@27
    .line 626
    const-string/jumbo v2, "userId"

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 628
    .local v1, "userIdString":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@31
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@34
    move-result v3

    #@35
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/Owners;->-set1(Lcom/android/server/devicepolicy/Owners;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 629
    :catch_0
    move-exception v0

    #@3a
    .line 630
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Error parsing user-id "

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    goto :goto_0

    #@55
    .line 619
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "userIdString":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "device-initializer"

    #@58
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v2

    #@5c
    if-nez v2, :cond_1

    #@5e
    const-string/jumbo v2, "system-update-policy"

    #@61
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_4

    #@67
    .line 638
    iget-object v2, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@69
    invoke-static {p1}, Landroid/app/admin/SystemUpdatePolicy;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/admin/SystemUpdatePolicy;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/Owners;->-set2(Lcom/android/server/devicepolicy/Owners;Landroid/app/admin/SystemUpdatePolicy;)Landroid/app/admin/SystemUpdatePolicy;

    #@70
    goto :goto_0

    #@71
    .line 641
    :cond_4
    const-string/jumbo v2, "DevicePolicyManagerService"

    #@74
    new-instance v3, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v4, "Unexpected tag: "

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v3

    #@88
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 642
    return v5
.end method

.method shouldWrite()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 595
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@3
    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->-get0(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@b
    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->-get3(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method writeInner(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 600
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@3
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get0(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 601
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@b
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get0(Lcom/android/server/devicepolicy/Owners;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "device-owner"

    #@12
    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    #@15
    .line 602
    const-string/jumbo v0, "device-owner-context"

    #@18
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    .line 603
    const-string/jumbo v0, "userId"

    #@1e
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@20
    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->-get1(Lcom/android/server/devicepolicy/Owners;)I

    #@23
    move-result v1

    #@24
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2b
    .line 604
    const-string/jumbo v0, "device-owner-context"

    #@2e
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@31
    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@33
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get3(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 608
    const-string/jumbo v0, "system-update-policy"

    #@3c
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@3f
    .line 609
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$DeviceOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@41
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get3(Lcom/android/server/devicepolicy/Owners;)Landroid/app/admin/SystemUpdatePolicy;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, p1}, Landroid/app/admin/SystemUpdatePolicy;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    #@48
    .line 610
    const-string/jumbo v0, "system-update-policy"

    #@4b
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4e
    .line 599
    :cond_1
    return-void
.end method
