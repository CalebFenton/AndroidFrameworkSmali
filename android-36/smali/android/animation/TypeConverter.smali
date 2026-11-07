.class public abstract Landroid/animation/TypeConverter;
.super Ljava/lang/Object;
.source "TypeConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mFromClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;TV;>;"
    .local p1, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/animation/TypeConverter;->mFromClass:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Landroid/animation/TypeConverter;->mToClass:Ljava/lang/Class;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract whitelist convert(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method greylist-max-o getSourceType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "this":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;TV;>;"
    iget-object v0, p0, Landroid/animation/TypeConverter;->mFromClass:Ljava/lang/Class;

    return-object v0
.end method

.method greylist-max-o getTargetType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;TV;>;"
    iget-object v0, p0, Landroid/animation/TypeConverter;->mToClass:Ljava/lang/Class;

    return-object v0
.end method
