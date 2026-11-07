.class public Landroid/service/notification/ZenModeDiff$FieldDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldDiff"
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
.field private final blacklist mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

.field private final blacklist mFrom:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mTo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    .line 75
    iput-object p2, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    .line 77
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V
    .registers 4
    .param p3, "detailedDiff"    # Landroid/service/notification/ZenModeDiff$BaseDiff;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/service/notification/ZenModeDiff$BaseDiff;",
            ")V"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    .local p1, "from":Ljava/lang/Object;, "TT;"
    .local p2, "to":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    .line 87
    iput-object p2, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist from()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist hasDiff()Z
    .registers 3

    .line 120
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    if-eqz v0, :cond_b

    .line 121
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$BaseDiff;->hasDiff()Z

    move-result v0

    return v0

    .line 124
    :cond_b
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist to()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 102
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    .local p0, "this":Landroid/service/notification/ZenModeDiff$FieldDiff;, "Landroid/service/notification/ZenModeDiff$FieldDiff<TT;>;"
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$BaseDiff;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
