.class public final Landroid/os/UEventObserver$UEvent;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UEvent"
.end annotation


# instance fields
.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 128
    new-instance v4, Ljava/util/HashMap;

    #@6
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v4, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    #@b
    .line 131
    const/4 v3, 0x0

    #@c
    .line 132
    .local v3, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    .line 134
    .local v2, "length":I
    :goto_0
    if-ge v3, v2, :cond_0

    #@12
    .line 135
    const/16 v4, 0x3d

    #@14
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    #@17
    move-result v1

    #@18
    .line 136
    .local v1, "equals":I
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    #@1b
    move-result v0

    #@1c
    .line 137
    .local v0, "at":I
    if-gez v0, :cond_1

    #@1e
    .line 130
    .end local v0    # "at":I
    .end local v1    # "equals":I
    :cond_0
    return-void

    #@1f
    .line 139
    .restart local v0    # "at":I
    .restart local v1    # "equals":I
    :cond_1
    if-le v1, v3, :cond_2

    #@21
    if-ge v1, v0, :cond_2

    #@23
    .line 141
    iget-object v4, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    #@25
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 142
    add-int/lit8 v6, v1, 0x1

    #@2b
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 141
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    .line 145
    :cond_2
    add-int/lit8 v3, v0, 0x1

    #@34
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    .line 155
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    #@b
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
