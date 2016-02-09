.class Lcom/android/server/am/ActivityManagerService$1;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$1;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    #@0
    .prologue
    .line 749
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$1;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .locals 4
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/BroadcastFilter;>;"
    const/4 v3, 0x0

    #@1
    .line 751
    iget-object v2, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@3
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@5
    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v1

    #@9
    .line 752
    .local v1, "target":Landroid/os/IBinder;
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@11
    .line 753
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    #@17
    iget-object v2, v2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    #@1b
    invoke-interface {v2}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    #@1e
    move-result-object v2

    #@1f
    if-ne v2, v1, :cond_0

    #@21
    .line 754
    return v3

    #@22
    .line 752
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@24
    goto :goto_0

    #@25
    .line 757
    :cond_1
    const/4 v2, 0x1

    #@26
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    .line 775
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    #@2
    .end local p2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$1;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    #@0
    .prologue
    .line 776
    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 770
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$1;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 771
    new-array v0, p1, [Lcom/android/server/am/BroadcastFilter;

    #@2
    return-object v0
.end method

.method protected newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;
    .locals 2
    .param p1, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 762
    if-eq p3, v1, :cond_0

    #@3
    iget v0, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    #@5
    if-ne v0, v1, :cond_1

    #@7
    .line 764
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/android/server/am/BroadcastFilter;

    #@d
    return-object v0

    #@e
    .line 763
    :cond_1
    iget v0, p1, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    #@10
    if-eq p3, v0, :cond_0

    #@12
    .line 766
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 761
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    #@2
    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$1;->newResult(Lcom/android/server/am/BroadcastFilter;II)Lcom/android/server/am/BroadcastFilter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
