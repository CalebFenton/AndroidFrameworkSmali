.class public Landroid/app/servertransaction/WindowContextWindowRemovalItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextWindowRemovalItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextWindowRemovalItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "clientToken"    # Landroid/os/IBinder;

    .line 39
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextWindowRemovalItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextWindowRemovalItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    if-ne p0, p1, :cond_4

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 80
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    .line 81
    .local v0, "other":Landroid/app/servertransaction/WindowContextWindowRemovalItem;
    iget-object v1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 78
    .end local v0    # "other":Landroid/app/servertransaction/WindowContextWindowRemovalItem;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 46
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->handleWindowContextWindowRemoval(Landroid/os/IBinder;)V

    .line 47
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 86
    const/16 v0, 0x11

    .line 87
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 88
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextWindowRemovalItem{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 55
    return-void
.end method
