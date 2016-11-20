.class final Ldalvik/system/profiler/AsciiHprofWriter$1;
.super Ljava/lang/Object;
.source "AsciiHprofWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/AsciiHprofWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldalvik/system/profiler/HprofData$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ldalvik/system/profiler/HprofData$Sample;Ldalvik/system/profiler/HprofData$Sample;)I
    .locals 2
    .param p1, "s1"    # Ldalvik/system/profiler/HprofData$Sample;
    .param p2, "s2"    # Ldalvik/system/profiler/HprofData$Sample;

    #@0
    .prologue
    .line 96
    iget v0, p2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@2
    iget v1, p1, Ldalvik/system/profiler/HprofData$Sample;->count:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 95
    check-cast p1, Ldalvik/system/profiler/HprofData$Sample;

    #@2
    .end local p1    # "s1":Ljava/lang/Object;
    check-cast p2, Ldalvik/system/profiler/HprofData$Sample;

    #@4
    .end local p2    # "s2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ldalvik/system/profiler/AsciiHprofWriter$1;->compare(Ldalvik/system/profiler/HprofData$Sample;Ldalvik/system/profiler/HprofData$Sample;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
