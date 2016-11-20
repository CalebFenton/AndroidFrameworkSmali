.class Landroid/net/Uri$PathSegmentsBuilder;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathSegmentsBuilder"
.end annotation


# instance fields
.field segments:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1006
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    #@6
    .line 1003
    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1009
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 1010
    const/4 v1, 0x4

    #@6
    new-array v1, v1, [Ljava/lang/String;

    #@8
    iput-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@a
    .line 1017
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@c
    iget v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    #@e
    add-int/lit8 v3, v2, 0x1

    #@10
    iput v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    #@12
    aput-object p1, v1, v2

    #@14
    .line 1008
    return-void

    #@15
    .line 1011
    :cond_1
    iget v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@1b
    array-length v2, v2

    #@1c
    if-ne v1, v2, :cond_0

    #@1e
    .line 1012
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@20
    array-length v1, v1

    #@21
    mul-int/lit8 v1, v1, 0x2

    #@23
    new-array v0, v1, [Ljava/lang/String;

    #@25
    .line 1013
    .local v0, "expanded":[Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@27
    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@29
    array-length v2, v2

    #@2a
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2d
    .line 1014
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@2f
    goto :goto_0
.end method

.method build()Landroid/net/Uri$PathSegments;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1021
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1022
    sget-object v0, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    #@7
    return-object v0

    #@8
    .line 1026
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/Uri$PathSegments;

    #@a
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@c
    iget v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    #@e
    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathSegments;-><init>([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 1029
    iput-object v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@13
    .line 1026
    return-object v0

    #@14
    .line 1027
    :catchall_0
    move-exception v0

    #@15
    .line 1029
    iput-object v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    #@17
    .line 1027
    throw v0
.end method
