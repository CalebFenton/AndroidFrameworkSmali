.class public Landroid/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final canonicalIndex:I

.field private final string:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1130
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    #@4
    .line 1129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1142
    invoke-static {p1, p2}, Landroid/icu/text/DateTimePatternGenerator;->-wrap0(Ljava/lang/String;Z)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    #@9
    .line 1143
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    #@b
    if-gez v0, :cond_0

    #@d
    .line 1144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Illegal datetime field:\t"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 1147
    :cond_0
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    #@29
    .line 1141
    return-void
.end method

.method public static getCanonicalCode(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1170
    :try_start_0
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get0()[Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 1171
    :catch_0
    move-exception v0

    #@8
    .line 1172
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method private getCanonicalIndex()I
    .locals 1

    #@0
    .prologue
    .line 1190
    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    #@2
    return v0
.end method


# virtual methods
.method public getType()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1160
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    #@6
    aget-object v0, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    aget v0, v0, v1

    #@b
    return v0
.end method

.method public isNumeric()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1183
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    #@4
    move-result-object v1

    #@5
    iget v2, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    #@7
    aget-object v1, v1, v2

    #@9
    const/4 v2, 0x2

    #@a
    aget v1, v1, v2

    #@c
    if-lez v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1200
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    #@2
    return-object v0
.end method
