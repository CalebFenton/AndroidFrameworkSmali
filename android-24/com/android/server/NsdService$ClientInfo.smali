.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private mClientIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method static synthetic -get0(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/NsdService$ClientInfo;I)I
    .locals 1
    .param p1, "globalId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/NsdService$ClientInfo;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/NsdService$ClientInfo;->expungeAllRequests()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/NsdService;
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 871
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@c
    .line 874
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@13
    .line 877
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@15
    .line 878
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@17
    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$ClientInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NsdService;
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    #@3
    return-void
.end method

.method private expungeAllRequests()V
    .locals 4

    #@0
    .prologue
    .line 901
    const/4 v2, 0x0

    #@1
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    if-ge v2, v3, :cond_0

    #@9
    .line 902
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@e
    move-result v0

    #@f
    .line 903
    .local v0, "clientId":I
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@11
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Ljava/lang/Integer;

    #@17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v1

    #@1b
    .line 904
    .local v1, "globalId":I
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@1d
    invoke-static {v3}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    #@24
    .line 907
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/lang/Integer;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@2f
    move-result v3

    #@30
    sparse-switch v3, :sswitch_data_0

    #@33
    .line 901
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 909
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@38
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@3b
    goto :goto_1

    #@3c
    .line 912
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@3e
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@41
    goto :goto_1

    #@42
    .line 915
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@44
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@47
    goto :goto_1

    #@48
    .line 921
    .end local v0    # "clientId":I
    .end local v1    # "globalId":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@4a
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@4d
    .line 922
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@4f
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@52
    .line 899
    return-void

    #@53
    .line 907
    nop

    #@54
    :sswitch_data_0
    .sparse-switch
        0x60001 -> :sswitch_0
        0x60009 -> :sswitch_2
        0x60012 -> :sswitch_1
    .end sparse-switch
.end method

.method private getClientId(I)I
    .locals 4
    .param p1, "globalId"    # I

    #@0
    .prologue
    .line 930
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v2

    #@7
    .local v2, "nSize":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 931
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/lang/Integer;

    #@11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v1

    #@15
    .line 932
    .local v1, "mDnsId":I
    if-ne p1, v1, :cond_0

    #@17
    .line 933
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1c
    move-result v3

    #@1d
    return v3

    #@1e
    .line 930
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 936
    .end local v1    # "mDnsId":I
    :cond_1
    const/4 v3, -0x1

    #@22
    return v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 884
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 885
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "mChannel "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@11
    move-result-object v3

    #@12
    const-string/jumbo v4, "\n"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@18
    .line 886
    const-string/jumbo v3, "mMessenger "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, "\n"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2b
    .line 887
    const-string/jumbo v3, "mResolvedService "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    move-result-object v3

    #@32
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@37
    move-result-object v3

    #@38
    const-string/jumbo v4, "\n"

    #@3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    .line 888
    const/4 v1, 0x0

    #@3f
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@41
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@44
    move-result v3

    #@45
    if-ge v1, v3, :cond_0

    #@47
    .line 889
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@4c
    move-result v0

    #@4d
    .line 890
    .local v0, "clientID":I
    const-string/jumbo v3, "clientId "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@57
    move-result-object v3

    #@58
    .line 891
    const-string/jumbo v4, " mDnsId "

    #@5b
    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    move-result-object v3

    #@5f
    .line 891
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@61
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v3

    #@69
    .line 892
    const-string/jumbo v4, " type "

    #@6c
    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    move-result-object v3

    #@70
    .line 892
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@72
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v4

    #@76
    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@79
    move-result-object v3

    #@7a
    .line 892
    const-string/jumbo v4, "\n"

    #@7d
    .line 890
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    .line 888
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_0

    #@83
    .line 894
    .end local v0    # "clientID":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    return-object v3
.end method
