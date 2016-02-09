.class public Landroid/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;,
        Landroid/animation/PropertyValuesHolder$PointFToFloatArray;,
        Landroid/animation/PropertyValuesHolder$PointFToIntArray;
    }
.end annotation


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mConverter:Landroid/animation/TypeConverter;

.field private mEvaluator:Landroid/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field mKeyframes:Landroid/animation/Keyframes;

.field protected mProperty:Landroid/util/Property;

.field mPropertyName:Ljava/lang/String;

.field mSetter:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mValueType:Ljava/lang/Class;


# direct methods
.method static synthetic -wrap0(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 2
    .param p0, "targetClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 2
    .param p0, "targetClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap10(Ljava/lang/Object;JFF)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg1"    # F
    .param p4, "arg2"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoFloatMethod(Ljava/lang/Object;JFF)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Ljava/lang/Object;JII)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoIntMethod(Ljava/lang/Object;JII)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/Class;Ljava/lang/String;I)J
    .locals 2
    .param p0, "targetClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "numParams"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap3(Ljava/lang/Class;Ljava/lang/String;I)J
    .locals 2
    .param p0, "targetClass"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "numParams"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap4(Ljava/lang/Object;JF)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Ljava/lang/Object;JFFFF)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg1"    # F
    .param p4, "arg2"    # F
    .param p5, "arg3"    # F
    .param p6, "arg4"    # F

    #@0
    .prologue
    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Ljava/lang/Object;JIIII)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourIntMethod(Ljava/lang/Object;JIIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Ljava/lang/Object;JI)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "arg"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Ljava/lang/Object;J[F)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "args"    # [F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Ljava/lang/Object;J[I)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "methodID"    # J
    .param p3, "args"    # [I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleIntMethod(Ljava/lang/Object;J[I)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 81
    new-instance v0, Landroid/animation/IntEvaluator;

    #@7
    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    #@a
    sput-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    #@c
    .line 82
    new-instance v0, Landroid/animation/FloatEvaluator;

    #@e
    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    #@11
    sput-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    #@13
    .line 91
    const/4 v0, 0x6

    #@14
    new-array v0, v0, [Ljava/lang/Class;

    #@16
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@18
    aput-object v1, v0, v3

    #@1a
    const-class v1, Ljava/lang/Float;

    #@1c
    aput-object v1, v0, v4

    #@1e
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v1, v0, v5

    #@22
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    aput-object v1, v0, v6

    #@26
    .line 92
    const-class v1, Ljava/lang/Double;

    #@28
    aput-object v1, v0, v7

    #@2a
    const-class v1, Ljava/lang/Integer;

    #@2c
    const/4 v2, 0x5

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 91
    sput-object v0, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    #@31
    .line 93
    const/4 v0, 0x6

    #@32
    new-array v0, v0, [Ljava/lang/Class;

    #@34
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@36
    aput-object v1, v0, v3

    #@38
    const-class v1, Ljava/lang/Integer;

    #@3a
    aput-object v1, v0, v4

    #@3c
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3e
    aput-object v1, v0, v5

    #@40
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@42
    aput-object v1, v0, v6

    #@44
    .line 94
    const-class v1, Ljava/lang/Float;

    #@46
    aput-object v1, v0, v7

    #@48
    const-class v1, Ljava/lang/Double;

    #@4a
    const/4 v2, 0x5

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 93
    sput-object v0, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    #@4f
    .line 95
    const/4 v0, 0x6

    #@50
    new-array v0, v0, [Ljava/lang/Class;

    #@52
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@54
    aput-object v1, v0, v3

    #@56
    const-class v1, Ljava/lang/Double;

    #@58
    aput-object v1, v0, v4

    #@5a
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@5c
    aput-object v1, v0, v5

    #@5e
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@60
    aput-object v1, v0, v6

    #@62
    .line 96
    const-class v1, Ljava/lang/Float;

    #@64
    aput-object v1, v0, v7

    #@66
    const-class v1, Ljava/lang/Integer;

    #@68
    const/4 v2, 0x5

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 95
    sput-object v0, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    #@6d
    .line 102
    new-instance v0, Ljava/util/HashMap;

    #@6f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@72
    .line 101
    sput-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    #@74
    .line 104
    new-instance v0, Ljava/util/HashMap;

    #@76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@79
    .line 103
    sput-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    #@7b
    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/util/Property;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@6
    .line 66
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@8
    .line 77
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 107
    const/4 v0, 0x1

    #@b
    new-array v0, v0, [Ljava/lang/Object;

    #@d
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@f
    .line 142
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@11
    .line 143
    if-eqz p1, :cond_0

    #@13
    .line 144
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@19
    .line 141
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V
    .locals 0
    .param p1, "property"    # Landroid/util/Property;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 57
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@6
    .line 66
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@8
    .line 77
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 107
    const/4 v0, 0x1

    #@b
    new-array v0, v0, [Ljava/lang/Object;

    #@d
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@f
    .line 134
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@11
    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 842
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 843
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@6
    instance-of v0, v0, Landroid/animation/BidirectionalTypeConverter;

    #@8
    if-nez v0, :cond_0

    #@a
    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Converter "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 845
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@1a
    invoke-virtual {v2}, Landroid/animation/TypeConverter;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 844
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 846
    const-string/jumbo v2, " must be a BidirectionalTypeConverter"

    #@29
    .line 844
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 848
    :cond_0
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@37
    check-cast v0, Landroid/animation/BidirectionalTypeConverter;

    #@39
    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    .line 850
    :cond_1
    return-object p1
.end method

.method static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1067
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1069
    :cond_0
    return-object p0

    #@a
    .line 1071
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v2

    #@e
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    #@11
    move-result v0

    #@12
    .line 1072
    .local v0, "firstLetter":C
    const/4 v2, 0x1

    #@13
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 1073
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method private getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 672
    const/4 v3, 0x0

    #@3
    .line 673
    .local v3, "returnVal":Ljava/lang/reflect/Method;
    iget-object v6, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@5
    invoke-static {p2, v6}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 674
    .local v2, "methodName":Ljava/lang/String;
    const/4 v0, 0x0

    #@a
    .line 675
    .local v0, "args":[Ljava/lang/Class;
    if-nez p3, :cond_2

    #@c
    .line 677
    :try_start_0
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    .line 710
    .end local v0    # "args":[Ljava/lang/Class;
    .end local v3    # "returnVal":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    #@12
    .line 711
    const-string/jumbo v6, "PropertyValuesHolder"

    #@15
    new-instance v7, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v8, "Method "

    #@1d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v7

    #@21
    .line 712
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@23
    invoke-static {p2, v8}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v8

    #@27
    .line 711
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    .line 712
    const-string/jumbo v8, "() with type "

    #@2e
    .line 711
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v7

    #@36
    .line 713
    const-string/jumbo v8, " not found on target class "

    #@39
    .line 711
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 716
    :cond_1
    return-object v3

    #@49
    .line 678
    .restart local v0    # "args":[Ljava/lang/Class;
    .restart local v3    # "returnVal":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@4a
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    #@4b
    .line 682
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-array v0, v8, [Ljava/lang/Class;

    #@4d
    .line 684
    .local v0, "args":[Ljava/lang/Class;
    const-class v6, Ljava/lang/Float;

    #@4f
    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v6

    #@53
    if-eqz v6, :cond_4

    #@55
    .line 685
    sget-object v5, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    #@57
    .line 694
    .local v5, "typeVariants":[Ljava/lang/Class;
    :goto_1
    array-length v8, v5

    #@58
    move v6, v7

    #@59
    .end local v3    # "returnVal":Ljava/lang/reflect/Method;
    :goto_2
    if-ge v6, v8, :cond_0

    #@5b
    aget-object v4, v5, v6

    #@5d
    .line 695
    .local v4, "typeVariant":Ljava/lang/Class;
    aput-object v4, v0, v7

    #@5f
    .line 697
    :try_start_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@62
    move-result-object v3

    #@63
    .line 698
    .local v3, "returnVal":Ljava/lang/reflect/Method;
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@65
    if-nez v9, :cond_3

    #@67
    .line 700
    iput-object v4, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    .line 702
    :cond_3
    return-object v3

    #@6a
    .line 686
    .end local v4    # "typeVariant":Ljava/lang/Class;
    .end local v5    # "typeVariants":[Ljava/lang/Class;
    .local v3, "returnVal":Ljava/lang/reflect/Method;
    :cond_4
    const-class v6, Ljava/lang/Integer;

    #@6c
    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v6

    #@70
    if-eqz v6, :cond_5

    #@72
    .line 687
    sget-object v5, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    #@74
    .restart local v5    # "typeVariants":[Ljava/lang/Class;
    goto :goto_1

    #@75
    .line 688
    .end local v5    # "typeVariants":[Ljava/lang/Class;
    :cond_5
    const-class v6, Ljava/lang/Double;

    #@77
    invoke-virtual {p3, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v6

    #@7b
    if-eqz v6, :cond_6

    #@7d
    .line 689
    sget-object v5, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    #@7f
    .restart local v5    # "typeVariants":[Ljava/lang/Class;
    goto :goto_1

    #@80
    .line 691
    .end local v5    # "typeVariants":[Ljava/lang/Class;
    :cond_6
    new-array v5, v8, [Ljava/lang/Class;

    #@82
    .line 692
    .restart local v5    # "typeVariants":[Ljava/lang/Class;
    aput-object p3, v5, v7

    #@84
    goto :goto_1

    #@85
    .line 703
    .end local v3    # "returnVal":Ljava/lang/reflect/Method;
    .restart local v4    # "typeVariant":Ljava/lang/Class;
    :catch_1
    move-exception v1

    #@86
    .line 694
    .restart local v1    # "e":Ljava/lang/NoSuchMethodException;
    add-int/lit8 v6, v6, 0x1

    #@88
    goto :goto_2
.end method

.method private static native nCallFloatMethod(Ljava/lang/Object;JF)V
.end method

.method private static native nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V
.end method

.method private static native nCallFourIntMethod(Ljava/lang/Object;JIIII)V
.end method

.method private static native nCallIntMethod(Ljava/lang/Object;JI)V
.end method

.method private static native nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V
.end method

.method private static native nCallMultipleIntMethod(Ljava/lang/Object;J[I)V
.end method

.method private static native nCallTwoFloatMethod(Ljava/lang/Object;JFF)V
.end method

.method private static native nCallTwoIntMethod(Ljava/lang/Object;JII)V
.end method

.method private static native nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method private static native nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method public static varargs ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 285
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    #@5
    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 274
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    #@5
    return-object v0
.end method

.method public static varargs ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;[I)V

    #@5
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    #@0
    .prologue
    .line 156
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    #@5
    return-object v0
.end method

.method public static varargs ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 542
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    .line 543
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 521
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    .line 522
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method static ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "keyframes"    # Landroid/animation/Keyframes;

    #@0
    .prologue
    .line 561
    instance-of v1, p1, Landroid/animation/Keyframes$IntKeyframes;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 562
    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@6
    check-cast p1, Landroid/animation/Keyframes$IntKeyframes;

    #@8
    .end local p1    # "keyframes":Landroid/animation/Keyframes;
    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V

    #@b
    return-object v1

    #@c
    .line 563
    .restart local p1    # "keyframes":Landroid/animation/Keyframes;
    :cond_0
    instance-of v1, p1, Landroid/animation/Keyframes$FloatKeyframes;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 564
    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    #@12
    check-cast p1, Landroid/animation/Keyframes$FloatKeyframes;

    #@14
    .end local p1    # "keyframes":Landroid/animation/Keyframes;
    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$FloatKeyframes;)V

    #@17
    return-object v1

    #@18
    .line 566
    .restart local p1    # "keyframes":Landroid/animation/Keyframes;
    :cond_1
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@1a
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    #@1d
    .line 567
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@1f
    .line 568
    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    #@22
    move-result-object v1

    #@23
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@25
    .line 569
    return-object v0
.end method

.method static ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "keyframes"    # Landroid/animation/Keyframes;

    #@0
    .prologue
    .line 547
    instance-of v1, p1, Landroid/animation/Keyframes$IntKeyframes;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 548
    new-instance v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@6
    check-cast p1, Landroid/animation/Keyframes$IntKeyframes;

    #@8
    .end local p1    # "keyframes":Landroid/animation/Keyframes;
    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V

    #@b
    return-object v1

    #@c
    .line 549
    .restart local p1    # "keyframes":Landroid/animation/Keyframes;
    :cond_0
    instance-of v1, p1, Landroid/animation/Keyframes$FloatKeyframes;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 550
    new-instance v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    #@12
    .line 551
    check-cast p1, Landroid/animation/Keyframes$FloatKeyframes;

    #@14
    .line 550
    .end local p1    # "keyframes":Landroid/animation/Keyframes;
    invoke-direct {v1, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$FloatKeyframes;)V

    #@17
    return-object v1

    #@18
    .line 553
    .restart local p1    # "keyframes":Landroid/animation/Keyframes;
    :cond_1
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@1a
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    #@1d
    .line 554
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@1f
    .line 555
    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    #@22
    move-result-object v1

    #@23
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@25
    .line 556
    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p3, "values"    # [Landroid/animation/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 379
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    .line 380
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    #@6
    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    #@9
    return-object v1
.end method

.method public static varargs ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TV;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 357
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;[F>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 335
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v1

    #@4
    .line 336
    .local v1, "keyframes":Landroid/animation/Keyframes;
    new-instance v0, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;

    #@6
    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;-><init>()V

    #@9
    .line 337
    .local v0, "converter":Landroid/animation/PropertyValuesHolder$PointFToFloatArray;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v2, p0, v0, v3, v1}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    #@f
    return-object v2
.end method

.method public static ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;
    .locals 7
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [[F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 303
    array-length v4, p1

    #@2
    const/4 v5, 0x2

    #@3
    if-ge v4, v5, :cond_0

    #@5
    .line 304
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "At least 2 values must be supplied"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 306
    :cond_0
    const/4 v3, 0x0

    #@f
    .line 307
    .local v3, "numParameters":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@11
    if-ge v1, v4, :cond_4

    #@13
    .line 308
    aget-object v4, p1, v1

    #@15
    if-nez v4, :cond_1

    #@17
    .line 309
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "values must not be null"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 311
    :cond_1
    aget-object v4, p1, v1

    #@22
    array-length v2, v4

    #@23
    .line 312
    .local v2, "length":I
    if-nez v1, :cond_3

    #@25
    .line 313
    move v3, v2

    #@26
    .line 307
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 314
    :cond_3
    if-eq v2, v3, :cond_2

    #@2b
    .line 315
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v5, "Values must all have the same length"

    #@30
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 318
    .end local v2    # "length":I
    :cond_4
    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    #@36
    new-array v4, v3, [F

    #@38
    invoke-direct {v0, v4}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    #@3b
    .line 319
    .local v0, "evaluator":Landroid/animation/FloatArrayEvaluator;
    new-instance v4, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    #@3d
    invoke-direct {v4, p0, v6, v0, p1}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    #@40
    return-object v4
.end method

.method public static varargs ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p3, "values"    # [Landroid/animation/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 262
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    #@3
    move-result-object v0

    #@4
    .line 263
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    #@6
    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    #@9
    return-object v1
.end method

.method public static varargs ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TV;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 240
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;[I>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method public static ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 217
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@3
    move-result-object v1

    #@4
    .line 218
    .local v1, "keyframes":Landroid/animation/Keyframes;
    new-instance v0, Landroid/animation/PropertyValuesHolder$PointFToIntArray;

    #@6
    invoke-direct {v0}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;-><init>()V

    #@9
    .line 219
    .local v0, "converter":Landroid/animation/PropertyValuesHolder$PointFToIntArray;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v2, p0, v0, v3, v1}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    #@f
    return-object v2
.end method

.method public static ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;
    .locals 7
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [[I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 185
    array-length v4, p1

    #@2
    const/4 v5, 0x2

    #@3
    if-ge v4, v5, :cond_0

    #@5
    .line 186
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v5, "At least 2 values must be supplied"

    #@a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v4

    #@e
    .line 188
    :cond_0
    const/4 v3, 0x0

    #@f
    .line 189
    .local v3, "numParameters":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    array-length v4, p1

    #@11
    if-ge v1, v4, :cond_4

    #@13
    .line 190
    aget-object v4, p1, v1

    #@15
    if-nez v4, :cond_1

    #@17
    .line 191
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v5, "values must not be null"

    #@1c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 193
    :cond_1
    aget-object v4, p1, v1

    #@22
    array-length v2, v4

    #@23
    .line 194
    .local v2, "length":I
    if-nez v1, :cond_3

    #@25
    .line 195
    move v3, v2

    #@26
    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 196
    :cond_3
    if-eq v2, v3, :cond_2

    #@2b
    .line 197
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v5, "Values must all have the same length"

    #@30
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v4

    #@34
    .line 200
    .end local v2    # "length":I
    :cond_4
    new-instance v0, Landroid/animation/IntArrayEvaluator;

    #@36
    new-array v4, v3, [I

    #@38
    invoke-direct {v0, v4}, Landroid/animation/IntArrayEvaluator;-><init>([I)V

    #@3b
    .line 201
    .local v0, "evaluator":Landroid/animation/IntArrayEvaluator;
    new-instance v4, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    #@3d
    invoke-direct {v4, p0, v6, v0, p1}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    #@40
    return-object v4
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property",
            "<*TV;>;",
            "Landroid/animation/TypeConverter",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 469
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*TV;>;"
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    #@5
    .line 470
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    #@8
    .line 471
    invoke-virtual {v0, p3}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    #@b
    .line 472
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@e
    .line 473
    return-object v0
.end method

.method public static ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property",
            "<*TV;>;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 494
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*TV;>;"
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    #@5
    .line 495
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@b
    .line 496
    const-class v1, Landroid/graphics/PointF;

    #@d
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@f
    .line 497
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    #@12
    .line 498
    return-object v0
.end method

.method public static varargs ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "property"    # Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 442
    .local p1, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    #@5
    .line 443
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 444
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 445
    return-object v0
.end method

.method public static ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    #@0
    .prologue
    .line 421
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    #@5
    .line 422
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@b
    .line 423
    const-class v1, Landroid/graphics/PointF;

    #@d
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@f
    .line 424
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    #@12
    .line 425
    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 397
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    #@5
    .line 398
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    #@8
    .line 399
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@b
    .line 400
    return-object v0
.end method

.method private setupGetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 771
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "get"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@c
    .line 770
    return-void
.end method

.method private setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    #@0
    .prologue
    .line 733
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v2, 0x0

    #@1
    .line 734
    .local v2, "setterOrGetter":Ljava/lang/reflect/Method;
    monitor-enter p2

    #@2
    .line 738
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Ljava/util/HashMap;

    #@8
    .line 739
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v3, 0x0

    #@9
    .line 740
    .local v3, "wasInMap":Z
    if-eqz v1, :cond_0

    #@b
    .line 741
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@10
    move-result v3

    #@11
    .line 742
    .local v3, "wasInMap":Z
    if-eqz v3, :cond_0

    #@13
    .line 743
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    move-object v0, v4

    #@1a
    check-cast v0, Ljava/lang/reflect/Method;

    #@1c
    move-object v2, v0

    #@1d
    .line 746
    .end local v2    # "setterOrGetter":Ljava/lang/reflect/Method;
    .end local v3    # "wasInMap":Z
    :cond_0
    if-nez v3, :cond_2

    #@1f
    .line 747
    invoke-direct {p0, p1, p3, p4}, Landroid/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v2

    #@23
    .line 748
    .local v2, "setterOrGetter":Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    #@25
    .line 749
    new-instance v1, Ljava/util/HashMap;

    #@27
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@2a
    .line 750
    .restart local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 752
    :cond_1
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@2f
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .end local v2    # "setterOrGetter":Ljava/lang/reflect/Method;
    :cond_2
    monitor-exit p2

    #@33
    .line 755
    return-object v2

    #@34
    .line 734
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    :catchall_0
    move-exception v4

    #@35
    monitor-exit p2

    #@36
    throw v4
.end method

.method private setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 861
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 862
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@6
    invoke-virtual {v4, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v4

    #@a
    invoke-direct {p0, v4}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    .line 863
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    #@11
    .line 866
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@18
    move-result-object v2

    #@19
    .line 868
    .local v2, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v2}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    #@1c
    .line 869
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@1e
    if-nez v4, :cond_1

    #@20
    .line 871
    return-void

    #@21
    .line 874
    .end local v2    # "targetClass":Ljava/lang/Class;
    :cond_1
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@23
    const/4 v5, 0x0

    #@24
    new-array v5, v5, [Ljava/lang/Object;

    #@26
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {p0, v4}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    .line 875
    .restart local v3    # "value":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@31
    .line 860
    .end local v3    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    #@32
    .line 878
    :catch_0
    move-exception v0

    #@33
    .line 879
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "PropertyValuesHolder"

    #@36
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@39
    move-result-object v5

    #@3a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    goto :goto_0

    #@3e
    .line 876
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@3f
    .line 877
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "PropertyValuesHolder"

    #@42
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    goto :goto_0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 2
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 992
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@2
    invoke-interface {v1, p1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 993
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@8
    if-nez v1, :cond_0

    #@a
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    #@c
    .line 991
    return-void

    #@d
    .line 993
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@f
    invoke-virtual {v1, v0}, Landroid/animation/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public clone()Landroid/animation/PropertyValuesHolder;
    .locals 3

    #@0
    .prologue
    .line 916
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/animation/PropertyValuesHolder;

    #@6
    .line 917
    .local v1, "newPVH":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@8
    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@a
    .line 918
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@c
    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@e
    .line 919
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@10
    invoke-interface {v2}, Landroid/animation/Keyframes;->clone()Landroid/animation/Keyframes;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@16
    .line 920
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@18
    iput-object v2, v1, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 921
    return-object v1

    #@1b
    .line 922
    .end local v1    # "newPVH":Landroid/animation/PropertyValuesHolder;
    :catch_0
    move-exception v0

    #@1c
    .line 924
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@1d
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 914
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1045
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1036
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method init()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 956
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 959
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@7
    const-class v2, Ljava/lang/Integer;

    #@9
    if-ne v1, v2, :cond_3

    #@b
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    #@d
    :cond_0
    :goto_0
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@f
    .line 963
    :cond_1
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@11
    if-eqz v0, :cond_2

    #@13
    .line 966
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@15
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@17
    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@1a
    .line 955
    :cond_2
    return-void

    #@1b
    .line 960
    :cond_3
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@1d
    const-class v2, Ljava/lang/Float;

    #@1f
    if-ne v1, v2, :cond_0

    #@21
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    #@23
    goto :goto_0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 936
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 937
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@6
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v2, p1, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 939
    :cond_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@f
    if-eqz v2, :cond_1

    #@11
    .line 941
    :try_start_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@13
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    const/4 v4, 0x0

    #@18
    aput-object v3, v2, v4

    #@1a
    .line 942
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@1c
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@1e
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 935
    :cond_1
    :goto_0
    return-void

    #@22
    .line 945
    :catch_0
    move-exception v0

    #@23
    .line 946
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "PropertyValuesHolder"

    #@26
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_0

    #@2e
    .line 943
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@2f
    .line 944
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "PropertyValuesHolder"

    #@32
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    goto :goto_0
.end method

.method public setConverter(Landroid/animation/TypeConverter;)V
    .locals 0
    .param p1, "converter"    # Landroid/animation/TypeConverter;

    #@0
    .prologue
    .line 652
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@2
    .line 651
    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 1
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    #@0
    .prologue
    .line 981
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@2
    .line 982
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@4
    invoke-interface {v0, p1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@7
    .line 980
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .param p1, "values"    # [F

    #@0
    .prologue
    .line 605
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@4
    .line 606
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofFloat([F)Landroid/animation/KeyframeSet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 604
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    #@0
    .prologue
    .line 587
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@4
    .line 588
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofInt([I)Landroid/animation/KeyframeSet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 586
    return-void
.end method

.method public varargs setKeyframes([Landroid/animation/Keyframe;)V
    .locals 4
    .param p1, "values"    # [Landroid/animation/Keyframe;

    #@0
    .prologue
    .line 615
    array-length v2, p1

    #@1
    .line 616
    .local v2, "numKeyframes":I
    const/4 v3, 0x2

    #@2
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@5
    move-result v3

    #@6
    new-array v1, v3, [Landroid/animation/Keyframe;

    #@8
    .line 617
    .local v1, "keyframes":[Landroid/animation/Keyframe;
    const/4 v3, 0x0

    #@9
    aget-object v3, p1, v3

    #@b
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@11
    .line 618
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@14
    .line 619
    aget-object v3, p1, v0

    #@16
    aput-object v3, v1, v0

    #@18
    .line 618
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 621
    :cond_0
    new-instance v3, Landroid/animation/KeyframeSet;

    #@1d
    invoke-direct {v3, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    #@20
    iput-object v3, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@22
    .line 614
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 638
    const/4 v0, 0x0

    #@1
    aget-object v0, p1, v0

    #@3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@9
    .line 639
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@f
    .line 640
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 641
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@15
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    #@17
    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@1a
    .line 637
    :cond_0
    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 0
    .param p1, "property"    # Landroid/util/Property;

    #@0
    .prologue
    .line 1024
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@2
    .line 1023
    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1012
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@2
    .line 1011
    return-void
.end method

.method setupEndValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 907
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@2
    invoke-interface {v1}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 908
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 909
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    add-int/lit8 v1, v1, -0x1

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/animation/Keyframe;

    #@18
    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    #@1b
    .line 906
    :cond_0
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 3
    .param p1, "targetClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 763
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@2
    if-nez v1, :cond_0

    #@4
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@6
    .line 764
    .local v0, "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget-object v1, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    #@8
    const-string/jumbo v2, "set"

    #@b
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@11
    .line 762
    return-void

    #@12
    .line 763
    .end local v0    # "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    #@14
    invoke-virtual {v1}, Landroid/animation/TypeConverter;->getTargetType()Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    .restart local v0    # "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 14
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 785
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@3
    invoke-interface {v10}, Landroid/animation/Keyframes;->invalidateCache()V

    #@6
    .line 786
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@8
    if-eqz v10, :cond_5

    #@a
    .line 789
    const/4 v8, 0x0

    #@b
    .line 790
    .local v8, "testValue":Ljava/lang/Object;
    :try_start_0
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@d
    invoke-interface {v10}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    #@10
    move-result-object v5

    #@11
    .line 791
    .local v5, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    if-nez v5, :cond_3

    #@13
    const/4 v4, 0x0

    #@14
    .line 792
    .local v4, "keyframeCount":I
    :goto_0
    const/4 v3, 0x0

    #@15
    .end local v8    # "testValue":Ljava/lang/Object;
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    #@17
    .line 793
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroid/animation/Keyframe;

    #@1d
    .line 794
    .local v6, "kf":Landroid/animation/Keyframe;
    invoke-virtual {v6}, Landroid/animation/Keyframe;->hasValue()Z

    #@20
    move-result v10

    #@21
    if-eqz v10, :cond_0

    #@23
    invoke-virtual {v6}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    #@26
    move-result v10

    #@27
    if-eqz v10, :cond_2

    #@29
    .line 795
    :cond_0
    if-nez v8, :cond_1

    #@2b
    .line 796
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@2d
    invoke-virtual {v10, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v10

    #@31
    invoke-direct {p0, v10}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v8

    #@35
    .line 798
    :cond_1
    invoke-virtual {v6, v8}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    #@38
    .line 799
    const/4 v10, 0x1

    #@39
    invoke-virtual {v6, v10}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V

    #@3c
    .line 792
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 791
    .end local v3    # "i":I
    .end local v4    # "keyframeCount":I
    .end local v6    # "kf":Landroid/animation/Keyframe;
    .restart local v8    # "testValue":Ljava/lang/Object;
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result v4

    #@43
    .restart local v4    # "keyframeCount":I
    goto :goto_0

    #@44
    .line 802
    .end local v8    # "testValue":Ljava/lang/Object;
    .restart local v3    # "i":I
    :cond_4
    return-void

    #@45
    .line 803
    .end local v3    # "i":I
    .end local v4    # "keyframeCount":I
    .end local v5    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    :catch_0
    move-exception v0

    #@46
    .line 804
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v10, "PropertyValuesHolder"

    #@49
    new-instance v11, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v12, "No such property ("

    #@51
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v11

    #@55
    iget-object v12, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@57
    invoke-virtual {v12}, Landroid/util/Property;->getName()Ljava/lang/String;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v11

    #@5f
    .line 805
    const-string/jumbo v12, ") on target object "

    #@62
    .line 804
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v11

    #@66
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    .line 805
    const-string/jumbo v12, ". Trying reflection instead"

    #@6d
    .line 804
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v11

    #@71
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v11

    #@75
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 806
    iput-object v13, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@7a
    .line 810
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_5
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@7c
    if-nez v10, :cond_b

    #@7e
    .line 811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@81
    move-result-object v7

    #@82
    .line 812
    .local v7, "targetClass":Ljava/lang/Class;
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@84
    if-nez v10, :cond_6

    #@86
    .line 813
    invoke-virtual {p0, v7}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    #@89
    .line 815
    :cond_6
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@8b
    invoke-interface {v10}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    #@8e
    move-result-object v5

    #@8f
    .line 816
    .restart local v5    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    if-nez v5, :cond_8

    #@91
    const/4 v4, 0x0

    #@92
    .line 817
    .restart local v4    # "keyframeCount":I
    :goto_2
    const/4 v3, 0x0

    #@93
    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v4, :cond_b

    #@95
    .line 818
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v6

    #@99
    check-cast v6, Landroid/animation/Keyframe;

    #@9b
    .line 819
    .restart local v6    # "kf":Landroid/animation/Keyframe;
    invoke-virtual {v6}, Landroid/animation/Keyframe;->hasValue()Z

    #@9e
    move-result v10

    #@9f
    if-eqz v10, :cond_7

    #@a1
    invoke-virtual {v6}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    #@a4
    move-result v10

    #@a5
    if-eqz v10, :cond_a

    #@a7
    .line 820
    :cond_7
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@a9
    if-nez v10, :cond_9

    #@ab
    .line 821
    invoke-direct {p0, v7}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    #@ae
    .line 822
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@b0
    if-nez v10, :cond_9

    #@b2
    .line 824
    return-void

    #@b3
    .line 816
    .end local v3    # "i":I
    .end local v4    # "keyframeCount":I
    .end local v6    # "kf":Landroid/animation/Keyframe;
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@b6
    move-result v4

    #@b7
    .restart local v4    # "keyframeCount":I
    goto :goto_2

    #@b8
    .line 828
    .restart local v3    # "i":I
    .restart local v6    # "kf":Landroid/animation/Keyframe;
    :cond_9
    :try_start_1
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    #@ba
    const/4 v11, 0x0

    #@bb
    new-array v11, v11, [Ljava/lang/Object;

    #@bd
    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c0
    move-result-object v10

    #@c1
    invoke-direct {p0, v10}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    move-result-object v9

    #@c5
    .line 829
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v6, v9}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    #@c8
    .line 830
    const/4 v10, 0x1

    #@c9
    invoke-virtual {v6, v10}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@cc
    .line 817
    .end local v9    # "value":Ljava/lang/Object;
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@ce
    goto :goto_3

    #@cf
    .line 833
    :catch_1
    move-exception v1

    #@d0
    .line 834
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v10, "PropertyValuesHolder"

    #@d3
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@d6
    move-result-object v11

    #@d7
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@da
    goto :goto_4

    #@db
    .line 831
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    #@dc
    .line 832
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v10, "PropertyValuesHolder"

    #@df
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    #@e2
    move-result-object v11

    #@e3
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    goto :goto_4

    #@e7
    .line 784
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "i":I
    .end local v4    # "keyframeCount":I
    .end local v5    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    .end local v6    # "kf":Landroid/animation/Keyframe;
    .end local v7    # "targetClass":Ljava/lang/Class;
    :cond_b
    return-void
.end method

.method setupStartValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 892
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@2
    invoke-interface {v1}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    .line 893
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 894
    const/4 v1, 0x0

    #@d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/animation/Keyframe;

    #@13
    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    #@16
    .line 891
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ": "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
