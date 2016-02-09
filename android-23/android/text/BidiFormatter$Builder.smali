.class public final Landroid/text/BidiFormatter$Builder;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mIsRtlContext:Z

.field private mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/text/BidiFormatter;->-wrap0(Ljava/util/Locale;)Z

    #@a
    move-result v0

    #@b
    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    #@e
    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 160
    invoke-static {p1}, Landroid/text/BidiFormatter;->-wrap0(Ljava/util/Locale;)Z

    #@6
    move-result v0

    #@7
    invoke-direct {p0, v0}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    #@a
    .line 159
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "rtlContext"    # Z

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    invoke-direct {p0, p1}, Landroid/text/BidiFormatter$Builder;->initialize(Z)V

    #@6
    .line 150
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "isRtlContext"    # Z

    #@0
    .prologue
    .line 200
    if-eqz p0, :cond_0

    #@2
    invoke-static {}, Landroid/text/BidiFormatter;->-get1()Landroid/text/BidiFormatter;

    #@5
    move-result-object v0

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->-get0()Landroid/text/BidiFormatter;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method private initialize(Z)V
    .locals 1
    .param p1, "isRtlContext"    # Z

    #@0
    .prologue
    .line 169
    iput-boolean p1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@2
    .line 170
    invoke-static {}, Landroid/text/BidiFormatter;->-get2()Landroid/text/TextDirectionHeuristic;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@8
    .line 171
    const/4 v0, 0x2

    #@9
    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@b
    .line 168
    return-void
.end method


# virtual methods
.method public build()Landroid/text/BidiFormatter;
    .locals 5

    #@0
    .prologue
    .line 207
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 208
    iget-object v0, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@7
    invoke-static {}, Landroid/text/BidiFormatter;->-get2()Landroid/text/TextDirectionHeuristic;

    #@a
    move-result-object v1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 209
    iget-boolean v0, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@f
    invoke-static {v0}, Landroid/text/BidiFormatter$Builder;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 211
    :cond_0
    new-instance v0, Landroid/text/BidiFormatter;

    #@16
    iget-boolean v1, p0, Landroid/text/BidiFormatter$Builder;->mIsRtlContext:Z

    #@18
    iget v2, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@1a
    iget-object v3, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter;)V

    #@20
    return-object v0
.end method

.method public setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/BidiFormatter$Builder;
    .locals 0
    .param p1, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 195
    iput-object p1, p0, Landroid/text/BidiFormatter$Builder;->mTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 196
    return-object p0
.end method

.method public stereoReset(Z)Landroid/text/BidiFormatter$Builder;
    .locals 1
    .param p1, "stereoReset"    # Z

    #@0
    .prologue
    .line 179
    if-eqz p1, :cond_0

    #@2
    .line 180
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x2

    #@6
    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@8
    .line 184
    :goto_0
    return-object p0

    #@9
    .line 182
    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@b
    and-int/lit8 v0, v0, -0x3

    #@d
    iput v0, p0, Landroid/text/BidiFormatter$Builder;->mFlags:I

    #@f
    goto :goto_0
.end method
