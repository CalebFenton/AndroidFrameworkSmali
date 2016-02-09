.class final Lcom/android/okhttp/internal/http/OkHeaders$1;
.super Ljava/lang/Object;
.source "OkHeaders.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/OkHeaders;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/okhttp/internal/http/OkHeaders$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    if-ne p1, p2, :cond_0

    #@2
    .line 29
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 30
    :cond_0
    if-nez p1, :cond_1

    #@6
    .line 31
    const/4 v0, -0x1

    #@7
    return v0

    #@8
    .line 32
    :cond_1
    if-nez p2, :cond_2

    #@a
    .line 33
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 35
    :cond_2
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@e
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    return v0
.end method
