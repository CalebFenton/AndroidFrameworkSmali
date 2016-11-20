.class public final Landroid/content/Intent$FilterComparison;
.super Ljava/lang/Object;
.source "Intent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterComparison"
.end annotation


# instance fields
.field private final mHashCode:I

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 8234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 8235
    iput-object p1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    #@5
    .line 8236
    invoke-virtual {p1}, Landroid/content/Intent;->filterHashCode()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    #@b
    .line 8234
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 8250
    instance-of v1, p1, Landroid/content/Intent$FilterComparison;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 8251
    check-cast p1, Landroid/content/Intent$FilterComparison;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    #@8
    .line 8252
    .local v0, "other":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    #@a
    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@d
    move-result v1

    #@e
    return v1

    #@f
    .line 8254
    .end local v0    # "other":Landroid/content/Intent;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    #@10
    return v1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 8245
    iget-object v0, p0, Landroid/content/Intent$FilterComparison;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 8259
    iget v0, p0, Landroid/content/Intent$FilterComparison;->mHashCode:I

    #@2
    return v0
.end method
