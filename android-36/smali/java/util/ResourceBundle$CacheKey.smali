.class final Ljava/util/ResourceBundle$CacheKey;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field private volatile greylist-max-o cause:Ljava/lang/Throwable;

.field private volatile greylist-max-o expirationTime:J

.field private volatile greylist-max-o format:Ljava/lang/String;

.field private volatile greylist-max-o loadTime:J

.field private final blacklist loaderRef:Ljava/util/ResourceBundle$KeyElementReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ResourceBundle$KeyElementReference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private volatile greylist-max-o locale:Ljava/util/Locale;

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetexpirationTime(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3

    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetloadTime(Ljava/util/ResourceBundle$CacheKey;)J
    .registers 3

    iget-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputexpirationTime(Ljava/util/ResourceBundle$CacheKey;J)V
    .registers 3

    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputloadTime(Ljava/util/ResourceBundle$CacheKey;J)V
    .registers 3

    iput-wide p1, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCause(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;
    .registers 1

    invoke-direct {p0}, Ljava/util/ResourceBundle$CacheKey;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCause(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$CacheKey;->setCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 636
    iput-object p2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 640
    if-nez p3, :cond_d

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    goto :goto_18

    .line 643
    :cond_d
    new-instance v0, Ljava/util/ResourceBundle$KeyElementReference;

    invoke-static {}, Ljava/util/ResourceBundle;->-$$Nest$sfgetreferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, p3, v1, p0}, Ljava/util/ResourceBundle$KeyElementReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    .line 645
    :goto_18
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ResourceBundle$CacheKey;)V
    .registers 5
    .param p1, "src"    # Ljava/util/ResourceBundle$CacheKey;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iget-object v0, p1, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    .line 659
    iget-object v0, p1, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 660
    iget-object v0, p1, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    if-nez v0, :cond_13

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    goto :goto_26

    .line 663
    :cond_13
    iget-object v0, p1, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$KeyElementReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 664
    .local v0, "loader":Ljava/lang/ClassLoader;
    new-instance v1, Ljava/util/ResourceBundle$KeyElementReference;

    invoke-static {}, Ljava/util/ResourceBundle;->-$$Nest$sfgetreferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Ljava/util/ResourceBundle$KeyElementReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    iput-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    .line 668
    .end local v0    # "loader":Ljava/lang/ClassLoader;
    :goto_26
    iget-object v0, p1, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    iput-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 669
    iget-wide v0, p1, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    iput-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->loadTime:J

    .line 670
    iget-wide v0, p1, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    iput-wide v0, p0, Ljava/util/ResourceBundle$CacheKey;->expirationTime:J

    .line 671
    return-void
.end method

.method private greylist-max-o getCause()Ljava/lang/Throwable;
    .registers 2

    .line 793
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method private greylist-max-o setCause(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 781
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    if-nez v0, :cond_7

    .line 782
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    goto :goto_f

    .line 786
    :cond_7
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_f

    .line 787
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->cause:Ljava/lang/Throwable;

    .line 790
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 719
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 720
    return v0

    .line 723
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Ljava/util/ResourceBundle$CacheKey;

    .line 730
    .local v2, "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 731
    return v1

    .line 734
    :cond_13
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 735
    return v1

    .line 739
    :cond_1e
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    if-nez v3, :cond_29

    .line 740
    iget-object v3, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 742
    :cond_29
    iget-object v3, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    invoke-virtual {v3}, Ljava/util/ResourceBundle$KeyElementReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 743
    .local v3, "loader":Ljava/lang/ClassLoader;
    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    if-eqz v4, :cond_40

    if-eqz v3, :cond_40

    iget-object v4, v2, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    .line 748
    invoke-virtual {v4, v3}, Ljava/util/ResourceBundle$KeyElementReference;->refersTo(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_3d} :catch_42
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_3d} :catch_42

    if-eqz v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    .line 743
    :goto_41
    return v0

    .line 757
    .end local v2    # "otherEntry":Ljava/util/ResourceBundle$CacheKey;
    .end local v3    # "loader":Ljava/lang/ClassLoader;
    :catch_42
    move-exception v0

    .line 759
    return v1
.end method

.method greylist-max-o getFormat()Ljava/lang/String;
    .registers 2

    .line 773
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 714
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->loaderRef:Ljava/util/ResourceBundle$KeyElementReference;

    invoke-virtual {v0}, Ljava/util/ResourceBundle$KeyElementReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method greylist-max-o getLocale()Ljava/util/Locale;
    .registers 2

    .line 678
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 674
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 764
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 765
    .local v0, "hashCode":I
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 766
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_1a

    .line 767
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 769
    :cond_1a
    return v0
.end method

.method greylist-max-o setFormat(Ljava/lang/String;)V
    .registers 2
    .param p1, "format"    # Ljava/lang/String;

    .line 777
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    .line 778
    return-void
.end method

.method greylist-max-o setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 682
    iput-object p1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    .line 683
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 798
    iget-object v0, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "l":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 800
    iget-object v1, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 803
    :cond_32
    const-string v0, "\"\""

    .line 806
    :cond_34
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheKey["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", classLoader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 808
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/ResourceBundle$CacheKey;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    return-object v1
.end method
