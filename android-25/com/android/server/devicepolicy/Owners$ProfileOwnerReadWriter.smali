.class Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;
.super Lcom/android/server/devicepolicy/Owners$FileReadWriter;
.source "Owners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/Owners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileOwnerReadWriter"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/devicepolicy/Owners;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/Owners;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/Owners;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@2
    .line 653
    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerFileWithTestOverride(I)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/Owners$FileReadWriter;-><init>(Ljava/io/File;)V

    #@9
    .line 654
    iput p2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    #@b
    .line 652
    return-void
.end method


# virtual methods
.method readInner(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 672
    const/4 v0, 0x2

    #@2
    if-le p2, v0, :cond_0

    #@4
    .line 673
    return v3

    #@5
    .line 675
    :cond_0
    const-string/jumbo v0, "profile-owner"

    #@8
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 677
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@10
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    #@13
    move-result-object v0

    #@14
    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    #@16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    invoke-static {p1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 684
    return v3

    #@22
    .line 680
    :cond_1
    const-string/jumbo v0, "DevicePolicyManagerService"

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Unexpected tag: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 681
    const/4 v0, 0x0

    #@3d
    return v0
.end method

.method shouldWrite()Z
    .locals 2

    #@0
    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@2
    invoke-static {v0}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    #@8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
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
    .line 664
    iget-object v1, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->this$0:Lcom/android/server/devicepolicy/Owners;

    #@2
    invoke-static {v1}, Lcom/android/server/devicepolicy/Owners;->-get2(Lcom/android/server/devicepolicy/Owners;)Landroid/util/ArrayMap;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lcom/android/server/devicepolicy/Owners$ProfileOwnerReadWriter;->mUserId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/devicepolicy/Owners$OwnerInfo;

    #@12
    .line 665
    .local v0, "profileOwner":Lcom/android/server/devicepolicy/Owners$OwnerInfo;
    if-eqz v0, :cond_0

    #@14
    .line 666
    const-string/jumbo v1, "profile-owner"

    #@17
    invoke-virtual {v0, p1, v1}, Lcom/android/server/devicepolicy/Owners$OwnerInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    #@1a
    .line 663
    :cond_0
    return-void
.end method
