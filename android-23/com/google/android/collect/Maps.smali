.class public Lcom/google/android/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newArrayMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    return-object v0
.end method

.method public static newHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    return-object v0
.end method
