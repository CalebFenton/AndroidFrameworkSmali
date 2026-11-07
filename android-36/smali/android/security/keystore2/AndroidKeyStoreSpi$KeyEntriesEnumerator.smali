.class Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
.super Ljava/lang/Object;
.source "AndroidKeyStoreSpi.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEntriesEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

.field private blacklist mCurrentEntry:I

.field private blacklist mLastAlias:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;


# direct methods
.method private constructor blacklist <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1330
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    const/4 p1, 0x0

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1329
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    .line 1331
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    .line 1332
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V

    return-void
.end method

.method private blacklist getAndValidateNextBatch()V
    .registers 3

    .line 1335
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->-$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    .line 1336
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1337
    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 2

    .line 1340
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 1326
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/lang/String;
    .registers 4

    .line 1344
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v0, v0

    if-eqz v0, :cond_26

    .line 1347
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    aget-object v0, v0, v1

    .line 1348
    .local v0, "currentEntry":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    .line 1350
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1352
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v2, v2

    if-lt v1, v2, :cond_23

    .line 1353
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    .line 1356
    :cond_23
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    return-object v1

    .line 1345
    .end local v0    # "currentEntry":Landroid/system/keystore2/KeyDescriptor;
    :cond_26
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Error while fetching entries."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
