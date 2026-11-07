.class public Landroid/app/servertransaction/ClientTransaction;
.super Ljava/lang/Object;
.source "ClientTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ClientTransaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist mActivityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o mActivityToken:Landroid/os/IBinder;

.field private final greylist-max-o mClient:Landroid/app/IApplicationThread;

.field private greylist-max-o mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

.field private final blacklist mTransactionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroid/app/servertransaction/ClientTransaction$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ClientTransaction$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 97
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/IApplicationThread;)V
    .registers 3
    .param p1, "client"    # Landroid/app/IApplicationThread;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 101
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    .line 264
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    .line 270
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 271
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v0, :cond_40

    .line 272
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    .line 273
    .local v2, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v2}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 274
    move-object v3, v2

    check-cast v3, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, v3}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_3d

    .line 276
    :cond_3a
    invoke-direct {p0, v2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 271
    .end local v2    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 279
    .end local v1    # "i":I
    :cond_40
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ClientTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private greylist-max-o addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 3
    .param p1, "activityCallback"    # Landroid/app/servertransaction/ClientTransactionItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 152
    :cond_b
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 154
    return-void
.end method

.method private blacklist setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 3
    .param p1, "item"    # Landroid/app/servertransaction/ClientTransactionItem;

    .line 213
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    if-eqz p1, :cond_c

    .line 214
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 216
    :cond_c
    return-void
.end method

.method private greylist-max-o setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .registers 3
    .param p1, "stateRequest"    # Landroid/app/servertransaction/ActivityLifecycleItem;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    if-eqz v0, :cond_5

    .line 205
    return-void

    .line 207
    :cond_5
    iput-object p1, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 208
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->setActivityTokenIfNotSet(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 209
    return-void
.end method


# virtual methods
.method public blacklist addTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .registers 3
    .param p1, "item"    # Landroid/app/servertransaction/ClientTransactionItem;

    .line 122
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_15

    .line 129
    :cond_12
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 131
    :goto_15
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "transactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 340
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "ClientTransaction{"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "  transactionItems=["

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "itemPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 344
    .local v1, "size":I
    if-lez v1, :cond_4b

    .line 345
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 346
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_41

    .line 347
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3, v0, p2, p3}, Landroid/app/servertransaction/ClientTransactionItem;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/app/ClientTransactionHandler;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 349
    .end local v2    # "i":I
    :cond_41
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  ]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_50

    .line 351
    :cond_4b
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    :goto_50
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 299
    return v0

    .line 301
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_46

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_46

    .line 304
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ClientTransaction;

    .line 305
    .local v2, "other":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    .line 306
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    .line 307
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    if-ne v3, v4, :cond_44

    iget-object v3, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    .line 309
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_45

    :cond_44
    move v0, v1

    .line 305
    :goto_45
    return v0

    .line 302
    .end local v2    # "other":Landroid/app/servertransaction/ClientTransaction;
    :cond_46
    :goto_46
    return v1
.end method

.method public greylist getActivityToken()Landroid/os/IBinder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getClient()Landroid/app/IApplicationThread;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public greylist getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    return-object v0
.end method

.method public blacklist getTransactionItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/servertransaction/ClientTransactionItem;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 314
    const/16 v0, 0x11

    .line 315
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 316
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityCallbacks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 317
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mLifecycleStateRequest:Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 318
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 319
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mActivityToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 320
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public greylist-max-o preExecute(Landroid/app/ClientTransactionHandler;)V
    .registers 5
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 224
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 225
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 226
    iget-object v2, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v2, p1}, Landroid/app/servertransaction/ClientTransactionItem;->preExecute(Landroid/app/ClientTransactionHandler;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 228
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public blacklist schedule()Landroid/os/RemoteException;
    .registers 2

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mClient:Landroid/app/IApplicationThread;

    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 247
    :catch_7
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ClientTransaction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v1, "\n  transactionItems=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v1, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 329
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v1, :cond_2a

    .line 330
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 332
    .end local v2    # "i":I
    :cond_2a
    const-string v2, "\n  ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "\n}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 258
    iget-object v0, p0, Landroid/app/servertransaction/ClientTransaction;->mTransactionItems:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 259
    return-void
.end method
