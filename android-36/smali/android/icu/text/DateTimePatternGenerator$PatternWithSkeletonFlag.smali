.class Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternWithSkeletonFlag"
.end annotation


# instance fields
.field public greylist-max-o pattern:Ljava/lang/String;

.field public greylist-max-o skeletonWasSpecified:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pat"    # Ljava/lang/String;
    .param p2, "skelSpecified"    # Z

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 2053
    iput-boolean p2, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    .line 2054
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
