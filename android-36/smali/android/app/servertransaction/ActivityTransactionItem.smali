.class public abstract Landroid/app/servertransaction/ActivityTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityTransactionItem.java"


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 55
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    .line 57
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    .line 112
    return-void
.end method


# virtual methods
.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/servertransaction/ClientTransactionItem;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    .line 118
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Target activity: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    .line 119
    invoke-static {v1, p3}, Landroid/app/servertransaction/TransactionExecutorHelper;->getActivityName(Landroid/os/IBinder;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    if-ne p0, p1, :cond_4

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 133
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityTransactionItem;

    .line 134
    .local v0, "other":Landroid/app/servertransaction/ActivityTransactionItem;
    iget-object v1, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 131
    .end local v0    # "other":Landroid/app/servertransaction/ActivityTransactionItem;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 62
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 63
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 64
    return-void
.end method

.method final blacklist getActivityClientRecord(Landroid/app/ClientTransactionHandler;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 6
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;

    .line 81
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 82
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_2e

    .line 86
    invoke-virtual {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 90
    return-object v0

    .line 87
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity client record must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getActivityToken()Landroid/os/IBinder;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/app/servertransaction/ActivityTransactionItem;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    return-void
.end method
