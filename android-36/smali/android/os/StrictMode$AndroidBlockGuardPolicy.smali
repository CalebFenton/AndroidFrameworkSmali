.class Landroid/os/StrictMode$AndroidBlockGuardPolicy;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ldalvik/system/BlockGuard$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidBlockGuardPolicy"
.end annotation


# instance fields
.field private greylist-max-o mLastViolationTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRealLastViolationTime:Landroid/util/SparseLongArray;

.field private blacklist mThreadPolicyMask:I


# direct methods
.method public static synthetic blacklist $r8$lambda$8cEr3yopH2m54_yi5FS7GfNsTW0(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->lambda$handleViolationWithTimingAttempt$0(Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .registers 2
    .param p1, "threadPolicyMask"    # I

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    .line 1664
    return-void
.end method

.method private synthetic blacklist lambda$handleViolationWithTimingAttempt$0(Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .registers 9
    .param p1, "windowManager"    # Landroid/view/IWindowManager;
    .param p2, "records"    # Ljava/util/ArrayList;

    .line 1841
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1847
    .local v0, "loopFinishTime":J
    if-eqz p1, :cond_c

    .line 1849
    const/4 v2, 0x0

    :try_start_7
    invoke-interface {p1, v2}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1851
    goto :goto_c

    .line 1850
    :catch_b
    move-exception v2

    .line 1854
    :cond_c
    :goto_c
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 1855
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 1856
    .local v3, "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v4, v2, 0x1

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1857
    iget-wide v4, v3, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v4, v0, v4

    long-to-int v4, v4

    iput v4, v3, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1859
    invoke-virtual {p0, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1854
    .end local v3    # "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1861
    .end local v2    # "n":I
    :cond_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1862
    return-void
.end method

.method static synthetic blacklist lambda$onThreadPolicyViolation$1(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V
    .registers 4
    .param p0, "listener"    # Landroid/os/StrictMode$OnThreadViolationListener;
    .param p1, "violation"    # Landroid/os/strictmode/Violation;

    .line 1957
    invoke-static {}, Landroid/os/StrictMode;->allowThreadViolations()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1959
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_4
    invoke-interface {p0, p1}, Landroid/os/StrictMode$OnThreadViolationListener;->onThreadViolation(Landroid/os/strictmode/Violation;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 1961
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1962
    nop

    .line 1963
    return-void

    .line 1961
    :catchall_c
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1962
    throw v1
.end method


# virtual methods
.method public greylist-max-o test-api getPolicyMask()I
    .registers 2

    .line 1673
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    return v0
.end method

.method public blacklist getThreadPolicyMask()I
    .registers 2

    .line 1757
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    return v0
.end method

.method greylist-max-o handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1782
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1800
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_5b

    invoke-static {p1}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v1

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_f

    goto :goto_5b

    .line 1806
    :cond_f
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetviolationsBeingTimed()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1807
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_22

    .line 1809
    return-void

    .line 1811
    :cond_22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2d

    .line 1816
    return-void

    .line 1820
    :cond_2d
    const/high16 v2, 0x8000000

    invoke-virtual {p1, v2}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsWindowManager()Landroid/util/Singleton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowManager;

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    .line 1821
    .local v2, "windowManager":Landroid/view/IWindowManager;
    :goto_41
    if-eqz v2, :cond_48

    .line 1823
    :try_start_43
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 1825
    goto :goto_48

    .line 1824
    :catch_47
    move-exception v3

    .line 1837
    :cond_48
    :goto_48
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetTHREAD_HANDLER()Ljava/lang/ThreadLocal;

    move-result-object v3

    .line 1838
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    new-instance v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v2, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda1;-><init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V

    .line 1839
    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1863
    return-void

    .line 1801
    .end local v1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :cond_5b
    :goto_5b
    const/4 v1, -0x1

    iput v1, p1, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1802
    invoke-virtual {p0, p1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1803
    return-void
.end method

.method greylist-max-o onCustomSlowCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1689
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    .line 1690
    return-void

    .line 1692
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1693
    return-void

    .line 1695
    :cond_e
    new-instance v0, Landroid/os/strictmode/CustomViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/CustomViolation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1696
    return-void
.end method

.method public blacklist onExplicitGc()V
    .registers 2

    .line 1747
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_7

    .line 1748
    return-void

    .line 1750
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1751
    return-void

    .line 1753
    :cond_e
    new-instance v0, Landroid/os/strictmode/ExplicitGcViolation;

    invoke-direct {v0}, Landroid/os/strictmode/ExplicitGcViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1754
    return-void
.end method

.method public greylist-max-o onNetwork()V
    .registers 3

    .line 1733
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_7

    .line 1734
    return-void

    .line 1736
    :cond_7
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1e

    .line 1739
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1740
    return-void

    .line 1742
    :cond_15
    new-instance v0, Landroid/os/strictmode/NetworkViolation;

    invoke-direct {v0}, Landroid/os/strictmode/NetworkViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1743
    return-void

    .line 1737
    :cond_1e
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw v0
.end method

.method public greylist-max-o test-api onReadFromDisk()V
    .registers 2

    .line 1722
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    .line 1723
    return-void

    .line 1725
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1726
    return-void

    .line 1728
    :cond_e
    new-instance v0, Landroid/os/strictmode/DiskReadViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskReadViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1729
    return-void
.end method

.method greylist-max-o onResourceMismatch(Ljava/lang/Object;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1700
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    .line 1701
    return-void

    .line 1703
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1704
    return-void

    .line 1706
    :cond_e
    new-instance v0, Landroid/os/strictmode/ResourceMismatchViolation;

    invoke-direct {v0, p1}, Landroid/os/strictmode/ResourceMismatchViolation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1707
    return-void
.end method

.method greylist-max-o onThreadPolicyViolation(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 21
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .line 1871
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetLOG_V()Z

    move-result v0

    const-string v3, "StrictMode"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onThreadPolicyViolation; penalty="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_27
    const/high16 v0, -0x80000000

    invoke-virtual {v2, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_6d

    .line 1874
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1875
    .local v0, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v0, :cond_49

    .line 1876
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 1877
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetgatheredViolations()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1879
    :cond_49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    .line 1880
    .local v4, "previous":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {v2}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/StrictMode$ViolationInfo;->getStackTrace()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1882
    return-void

    .line 1884
    .end local v4    # "previous":Landroid/os/StrictMode$ViolationInfo;
    :cond_68
    goto :goto_4d

    .line 1885
    :cond_69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    return-void

    .line 1890
    .end local v0    # "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    :cond_6d
    invoke-virtual {v2}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1891
    .local v5, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v6, 0x0

    .line 1892
    .local v6, "lastViolationTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1893
    .local v8, "now":J
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v0

    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetLOGCAT_LOGGER()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v10

    const-wide/16 v11, 0xbb8

    const-wide/16 v13, 0x7530

    move-object/from16 v16, v5

    .end local v5    # "crashFingerprint":Ljava/lang/Integer;
    .local v16, "crashFingerprint":Ljava/lang/Integer;
    const-wide/16 v4, 0x3e8

    if-ne v0, v10, :cond_ca

    .line 1894
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_b8

    .line 1895
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1896
    .local v0, "vtime":Ljava/lang/Long;
    if-eqz v0, :cond_a5

    .line 1897
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1899
    :cond_a5
    iget-object v10, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    .line 1900
    move-wide/from16 v17, v6

    .end local v6    # "lastViolationTime":J
    .local v17, "lastViolationTime":J
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1899
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v10, v6, v7}, Landroid/os/StrictMode;->-$$Nest$smclampViolationTimeMap(Landroid/util/SparseLongArray;J)V

    .line 1901
    .end local v0    # "vtime":Ljava/lang/Long;
    move-wide/from16 v6, v17

    const/4 v15, 0x1

    goto :goto_c0

    .line 1902
    .end local v17    # "lastViolationTime":J
    .restart local v6    # "lastViolationTime":J
    :cond_b8
    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v15, 0x1

    invoke-direct {v0, v15}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    .line 1904
    :goto_c0
    iget-object v0, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mRealLastViolationTime:Landroid/util/SparseLongArray;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    goto :goto_cb

    .line 1893
    :cond_ca
    const/4 v15, 0x1

    .line 1907
    :goto_cb
    const-wide/16 v17, 0x0

    cmp-long v0, v6, v17

    if-nez v0, :cond_d7

    const-wide v17, 0x7fffffffffffffffL

    goto :goto_d9

    :cond_d7
    sub-long v17, v8, v6

    .line 1909
    .local v17, "timeSinceLastViolationMillis":J
    :goto_d9
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v2, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_ec

    cmp-long v0, v17, v4

    if-lez v0, :cond_ec

    .line 1911
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsLogger()Landroid/os/StrictMode$ViolationLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/os/StrictMode$ViolationLogger;->log(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1914
    :cond_ec
    invoke-static {v2}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmViolation(Landroid/os/StrictMode$ViolationInfo;)Landroid/os/strictmode/Violation;

    move-result-object v4

    .line 1917
    .local v4, "violation":Landroid/os/strictmode/Violation;
    const/4 v0, 0x0

    .line 1919
    .local v0, "penaltyMask":I
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_fe

    cmp-long v10, v17, v13

    if-lez v10, :cond_fe

    .line 1921
    or-int/2addr v0, v5

    .line 1924
    :cond_fe
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_10d

    cmp-long v10, v17, v11

    if-lez v10, :cond_10d

    .line 1926
    or-int/2addr v0, v5

    move v10, v0

    goto :goto_10e

    .line 1929
    :cond_10d
    move v10, v0

    .end local v0    # "penaltyMask":I
    .local v10, "penaltyMask":I
    :goto_10e
    if-eqz v10, :cond_122

    .line 1930
    invoke-static {v2}, Landroid/os/StrictMode$ViolationInfo;->-$$Nest$fgetmPenaltyMask(Landroid/os/StrictMode$ViolationInfo;)I

    move-result v0

    if-ne v0, v5, :cond_117

    goto :goto_119

    :cond_117
    const/4 v0, 0x0

    move v15, v0

    .line 1931
    .local v15, "justDropBox":Z
    :goto_119
    if-eqz v15, :cond_11f

    .line 1938
    invoke-static {v10, v2}, Landroid/os/StrictMode;->-$$Nest$smdropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    goto :goto_122

    .line 1940
    :cond_11f
    invoke-static {v10, v2}, Landroid/os/StrictMode;->-$$Nest$smhandleApplicationStrictModeViolation(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1944
    .end local v15    # "justDropBox":Z
    :cond_122
    :goto_122
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/os/StrictMode$ViolationInfo;->penaltyEnabled(I)Z

    move-result v0

    if-nez v0, :cond_154

    .line 1950
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThreadViolationListener()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/StrictMode$OnThreadViolationListener;

    .line 1951
    .local v5, "listener":Landroid/os/StrictMode$OnThreadViolationListener;
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$sfgetsThreadViolationExecutor()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/concurrent/Executor;

    .line 1952
    .local v11, "executor":Ljava/util/concurrent/Executor;
    if-eqz v5, :cond_153

    if-eqz v11, :cond_153

    .line 1954
    :try_start_144
    new-instance v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v5, v4}, Landroid/os/StrictMode$AndroidBlockGuardPolicy$$ExternalSyntheticLambda0;-><init>(Landroid/os/StrictMode$OnThreadViolationListener;Landroid/os/strictmode/Violation;)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_144 .. :try_end_14c} :catch_14d

    .line 1966
    goto :goto_153

    .line 1964
    :catch_14d
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v12, "ThreadPolicy penaltyCallback failed"

    invoke-static {v3, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1968
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_153
    :goto_153
    return-void

    .line 1945
    .end local v5    # "listener":Landroid/os/StrictMode$OnThreadViolationListener;
    .end local v11    # "executor":Ljava/util/concurrent/Executor;
    :cond_154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "StrictMode ThreadPolicy violation"

    invoke-direct {v0, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o test-api onUnbufferedIO()V
    .registers 2

    .line 1711
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_7

    .line 1712
    return-void

    .line 1714
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1715
    return-void

    .line 1717
    :cond_e
    new-instance v0, Landroid/os/strictmode/UnbufferedIoViolation;

    invoke-direct {v0}, Landroid/os/strictmode/UnbufferedIoViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1718
    return-void
.end method

.method public greylist-max-o test-api onWriteToDisk()V
    .registers 2

    .line 1678
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_7

    .line 1679
    return-void

    .line 1681
    :cond_7
    invoke-static {}, Landroid/os/StrictMode;->-$$Nest$smtooManyViolationsThisLoop()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1682
    return-void

    .line 1684
    :cond_e
    new-instance v0, Landroid/os/strictmode/DiskWriteViolation;

    invoke-direct {v0}, Landroid/os/strictmode/DiskWriteViolation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->startHandlingViolationException(Landroid/os/strictmode/Violation;)V

    .line 1685
    return-void
.end method

.method public blacklist setThreadPolicyMask(I)V
    .registers 2
    .param p1, "threadPolicyMask"    # I

    .line 1761
    iput p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    .line 1762
    return-void
.end method

.method greylist-max-o startHandlingViolationException(Landroid/os/strictmode/Violation;)V
    .registers 6
    .param p1, "e"    # Landroid/os/strictmode/Violation;

    .line 1770
    iget v0, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 1771
    .local v0, "penaltyMask":I
    new-instance v1, Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {v1, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/strictmode/Violation;I)V

    .line 1772
    .local v1, "info":Landroid/os/StrictMode$ViolationInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    .line 1773
    invoke-virtual {p0, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1774
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidBlockGuardPolicy; mPolicyMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->mThreadPolicyMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
