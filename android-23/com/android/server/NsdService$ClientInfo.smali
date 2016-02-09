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
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/NsdService;
    .param p2, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p3, "m"    # Landroid/os/Messenger;

    #@0
    .prologue
    .line 888
    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 883
    new-instance v0, Landroid/util/SparseArray;

    #@7
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@c
    .line 886
    new-instance v0, Landroid/util/SparseArray;

    #@e
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@13
    .line 889
    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    #@15
    .line 890
    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    #@17
    .line 891
    const-string/jumbo v0, "NsdService"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "New client, channel: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, " messenger: "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 888
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
    .locals 6

    #@0
    .prologue
    .line 913
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
    .line 914
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@e
    move-result v0

    #@f
    .line 915
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
    .line 916
    .local v1, "globalId":I
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@1d
    invoke-static {v3}, Lcom/android/server/NsdService;->-get2(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    #@24
    .line 917
    const-string/jumbo v3, "NsdService"

    #@27
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "Terminating client-ID "

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 918
    const-string/jumbo v5, " global-ID "

    #@3a
    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 918
    const-string/jumbo v5, " type "

    #@45
    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 918
    iget-object v5, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@4b
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v5

    #@4f
    .line 917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    .line 919
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@5c
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5f
    move-result-object v3

    #@60
    check-cast v3, Ljava/lang/Integer;

    #@62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@65
    move-result v3

    #@66
    sparse-switch v3, :sswitch_data_0

    #@69
    .line 913
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 921
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@6e
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap9(Lcom/android/server/NsdService;I)Z

    #@71
    goto :goto_1

    #@72
    .line 924
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@74
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap8(Lcom/android/server/NsdService;I)Z

    #@77
    goto :goto_1

    #@78
    .line 927
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    #@7a
    invoke-static {v3, v1}, Lcom/android/server/NsdService;->-wrap10(Lcom/android/server/NsdService;I)Z

    #@7d
    goto :goto_1

    #@7e
    .line 933
    .end local v0    # "clientId":I
    .end local v1    # "globalId":I
    :cond_0
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@80
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@83
    .line 934
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@85
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@88
    .line 911
    return-void

    #@89
    .line 919
    nop

    #@8a
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
    .line 942
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
    .line 943
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
    .line 944
    .local v1, "mDnsId":I
    if-ne p1, v1, :cond_0

    #@17
    .line 945
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1c
    move-result v3

    #@1d
    return v3

    #@1e
    .line 942
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 948
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
    .line 896
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 897
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
    .line 898
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
    .line 899
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
    .line 900
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
    .line 901
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@49
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@4c
    move-result v0

    #@4d
    .line 902
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
    .line 903
    const-string/jumbo v4, " mDnsId "

    #@5b
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5e
    move-result-object v3

    #@5f
    .line 903
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseArray;

    #@61
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@68
    move-result-object v3

    #@69
    .line 904
    const-string/jumbo v4, " type "

    #@6c
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@6f
    move-result-object v3

    #@70
    .line 904
    iget-object v4, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseArray;

    #@72
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@75
    move-result-object v4

    #@76
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@79
    move-result-object v3

    #@7a
    .line 904
    const-string/jumbo v4, "\n"

    #@7d
    .line 902
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    .line 900
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_0

    #@83
    .line 906
    .end local v0    # "clientID":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    return-object v3
.end method
