.class public interface abstract Landroid/test/PerformanceCollectorTestCase;
.super Ljava/lang/Object;
.source "PerformanceCollectorTestCase.java"


# static fields
.field public static final mPerfCollector:Landroid/os/PerformanceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Landroid/os/PerformanceCollector;

    #@2
    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    #@5
    sput-object v0, Landroid/test/PerformanceCollectorTestCase;->mPerfCollector:Landroid/os/PerformanceCollector;

    #@7
    .line 33
    return-void
.end method


# virtual methods
.method public abstract setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
.end method
