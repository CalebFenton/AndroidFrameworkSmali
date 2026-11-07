.class public Landroid/app/servertransaction/WindowContextInfoChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextInfoChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mInfo:Landroid/window/WindowContextInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 6
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "displayId"    # I

    .line 45
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    .line 47
    new-instance v0, Landroid/window/WindowContextInfo;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {v0, v1, p3}, Landroid/window/WindowContextInfo;-><init>(Landroid/content/res/Configuration;I)V

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 66
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    .line 68
    sget-object v0, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContextInfo;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContextInfo;

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextInfoChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextInfoChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 90
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/WindowContextInfoChangeItem;

    .line 91
    .local v2, "other":Landroid/app/servertransaction/WindowContextInfoChangeItem;
    iget-object v3, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    iget-object v4, v2, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 92
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 91
    :goto_2b
    return v0

    .line 88
    .end local v2    # "other":Landroid/app/servertransaction/WindowContextInfoChangeItem;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 53
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, v0, v1}, Landroid/app/ClientTransactionHandler;->handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V

    .line 54
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 97
    const/16 v0, 0x11

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextInfoChangeItem{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

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

    .line 61
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
