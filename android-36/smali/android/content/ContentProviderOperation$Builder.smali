.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArg:Ljava/lang/String;

.field private blacklist mExceptionAllowed:Z

.field private greylist-max-o mExpectedCount:Ljava/lang/Integer;

.field private blacklist mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMethod:Ljava/lang/String;

.field private greylist-max-o mSelection:Ljava/lang/String;

.field private blacklist mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mYieldAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return p0
.end method

.method private constructor greylist-max-o <init>(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 677
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    .line 678
    iput-object p3, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    .line 679
    iput-object p4, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    .line 680
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist assertExtrasAllowed()V
    .registers 4

    .line 1026
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_26

    .line 1034
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 1035
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :pswitch_24
    nop

    .line 1037
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist assertSelectionAllowed()V
    .registers 4

    .line 1014
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_26

    .line 1020
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 1021
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :pswitch_24
    nop

    .line 1023
    return-void

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist assertValuesAllowed()V
    .registers 4

    .line 1002
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_26

    .line 1008
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 1009
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :pswitch_24
    nop

    .line 1011
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_5
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist ensureExtras()V
    .registers 2

    .line 705
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    .line 708
    :cond_b
    return-void
.end method

.method private blacklist ensureSelectionArgs()V
    .registers 2

    .line 711
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    if-nez v0, :cond_b

    .line 712
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    .line 714
    :cond_b
    return-void
.end method

.method private blacklist ensureValues()V
    .registers 2

    .line 699
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 700
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    .line 702
    :cond_b
    return-void
.end method

.method private blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 726
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    .line 727
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    .line 728
    .local v0, "oldReference":Z
    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    .line 729
    .local v1, "newReference":Z
    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    .line 730
    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    :cond_16
    return-void
.end method

.method private blacklist setSelectionArg(ILjava/lang/Object;)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 735
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    .line 736
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    .line 737
    .local v0, "oldReference":Z
    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    .line 738
    .local v1, "newReference":Z
    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    .line 739
    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 741
    :cond_16
    return-void
.end method

.method private blacklist setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 717
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    .line 718
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    .line 719
    .local v0, "oldReference":Z
    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    .line 720
    .local v1, "newReference":Z
    if-eqz v0, :cond_11

    if-eqz v1, :cond_16

    .line 721
    :cond_11
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/ContentProviderOperation;
    .registers 4

    .line 684
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    const-string v2, "Empty values"

    if-ne v0, v1, :cond_1a

    .line 685
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1a

    .line 686
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1a
    :goto_1a
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_36

    .line 690
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2b
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_30

    :cond_2f
    goto :goto_36

    .line 692
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_36
    :goto_36
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public whitelist withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 2
    .param p1, "exceptionAllowed"    # Z

    .line 992
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    .line 993
    return-object p0
.end method

.method public whitelist withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .registers 4
    .param p1, "count"    # I

    .line 966
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    goto :goto_19

    .line 967
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_19
    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    .line 971
    return-object p0
.end method

.method public whitelist withExtra(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 856
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    .line 857
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 858
    return-object p0
.end method

.method public whitelist withExtraBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 871
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    .line 872
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    return-object p0
.end method

.method public whitelist withExtraBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "fromKey"    # Ljava/lang/String;

    .line 890
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    .line 891
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 892
    return-object p0
.end method

.method public whitelist withExtras(Landroid/os/Bundle;)Landroid/content/ContentProviderOperation$Builder;
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 841
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    .line 842
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    .line 843
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 844
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_e

    .line 846
    :cond_22
    return-object p0
.end method

.method public blacklist withFailureAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 3
    .param p1, "failureAllowed"    # Z

    .line 998
    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 5
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 910
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    .line 911
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    .line 912
    if-eqz p2, :cond_16

    .line 913
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    .line 914
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v1, p2

    if-ge v0, v1, :cond_16

    .line 915
    aget-object v1, p2, v0

    invoke-direct {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    .line 914
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 918
    .end local v0    # "i":I
    :cond_16
    return-object p0
.end method

.method public whitelist withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "fromIndex"    # I

    .line 933
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    .line 934
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    .line 935
    return-object p0
.end method

.method public whitelist withSelectionBackReference(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6
    .param p1, "index"    # I
    .param p2, "fromIndex"    # I
    .param p3, "fromKey"    # Ljava/lang/String;

    .line 954
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    .line 955
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    .line 956
    return-object p0
.end method

.method public whitelist withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 769
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    .line 770
    invoke-static {p2}, Landroid/content/ContentValues;->isSupportedValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 774
    return-object p0

    .line 771
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 807
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    .line 808
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    return-object p0
.end method

.method public whitelist withValueBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I
    .param p3, "fromKey"    # Ljava/lang/String;

    .line 826
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    .line 827
    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    return-object p0
.end method

.method public whitelist withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .registers 8
    .param p1, "backReferences"    # Landroid/content/ContentValues;

    .line 788
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    .line 789
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    .line 790
    .local v0, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 791
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/ContentProviderOperation$BackReference;

    .line 792
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation-IA;)V

    .line 791
    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 790
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 794
    .end local v1    # "i":I
    :cond_2a
    return-object p0
.end method

.method public whitelist withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .registers 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 753
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    .line 754
    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    .line 755
    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    .line 756
    .local v0, "rawValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 757
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 759
    .end local v1    # "i":I
    :cond_21
    return-object p0
.end method

.method public whitelist withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .registers 2
    .param p1, "yieldAllowed"    # Z

    .line 981
    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    .line 982
    return-object p0
.end method
