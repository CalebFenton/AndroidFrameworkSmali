.class public Landroid/test/suitebuilder/TestPredicates;
.super Ljava/lang/Object;
.source "TestPredicates.java"


# static fields
.field public static final REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_LARGE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_MEDIUM:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_SMALL:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_SMOKE:Lcom/android/internal/util/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 35
    new-instance v0, Landroid/test/suitebuilder/AssignableFrom;

    #@2
    const-class v1, Landroid/test/InstrumentationTestCase;

    #@4
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/AssignableFrom;-><init>(Ljava/lang/Class;)V

    #@7
    .line 34
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    #@9
    .line 37
    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    #@b
    invoke-static {v0}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@e
    move-result-object v0

    #@f
    .line 36
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_INSTRUMENTATION:Lcom/android/internal/util/Predicate;

    #@11
    .line 39
    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@13
    const-class v1, Landroid/test/suitebuilder/annotation/Smoke;

    #@15
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@18
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMOKE:Lcom/android/internal/util/Predicate;

    #@1a
    .line 40
    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@1c
    const-class v1, Landroid/test/suitebuilder/annotation/SmallTest;

    #@1e
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@21
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    #@23
    .line 41
    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@25
    const-class v1, Landroid/test/suitebuilder/annotation/MediumTest;

    #@27
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@2a
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    #@2c
    .line 42
    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@2e
    const-class v1, Landroid/test/suitebuilder/annotation/LargeTest;

    #@30
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@33
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    #@35
    .line 44
    new-instance v0, Landroid/test/suitebuilder/annotation/HasAnnotation;

    #@37
    const-class v1, Landroid/test/suitebuilder/annotation/Suppress;

    #@39
    invoke-direct {v0, v1}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    #@3c
    invoke-static {v0}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    #@3f
    move-result-object v0

    #@40
    .line 43
    sput-object v0, Landroid/test/suitebuilder/TestPredicates;->REJECT_SUPPRESSED:Lcom/android/internal/util/Predicate;

    #@42
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
