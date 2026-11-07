.class Ljava/lang/ClassValue$Version;
.super Ljava/lang/Object;
.source "ClassValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ClassValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist classValue:Ljava/lang/ClassValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist promise:Ljava/lang/ClassValue$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/ClassValue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassValue<",
            "TT;>;)V"
        }
    .end annotation

    .line 309
    .local p0, "this":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    .local p1, "classValue":Ljava/lang/ClassValue;, "Ljava/lang/ClassValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/lang/ClassValue$Entry;

    invoke-direct {v0, p0}, Ljava/lang/ClassValue$Entry;-><init>(Ljava/lang/ClassValue$Version;)V

    iput-object v0, p0, Ljava/lang/ClassValue$Version;->promise:Ljava/lang/ClassValue$Entry;

    .line 309
    iput-object p1, p0, Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;

    return-void
.end method


# virtual methods
.method blacklist classValue()Ljava/lang/ClassValue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassValue<",
            "TT;>;"
        }
    .end annotation

    .line 310
    .local p0, "this":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;

    return-object v0
.end method

.method blacklist isLive()Z
    .registers 2

    .line 312
    .local p0, "this":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassValue$Version;->classValue:Ljava/lang/ClassValue;

    invoke-virtual {v0}, Ljava/lang/ClassValue;->version()Ljava/lang/ClassValue$Version;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method blacklist promise()Ljava/lang/ClassValue$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ClassValue$Entry<",
            "TT;>;"
        }
    .end annotation

    .line 311
    .local p0, "this":Ljava/lang/ClassValue$Version;, "Ljava/lang/ClassValue$Version<TT;>;"
    iget-object v0, p0, Ljava/lang/ClassValue$Version;->promise:Ljava/lang/ClassValue$Entry;

    return-object v0
.end method
