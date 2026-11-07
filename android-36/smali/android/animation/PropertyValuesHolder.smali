.class public Landroid/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;,
        Landroid/animation/PropertyValuesHolder$PointFToIntArray;,
        Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;,
        Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;,
        Landroid/animation/PropertyValuesHolder$PointFToFloatArray;,
        Landroid/animation/PropertyValuesHolder$PropertyValues;
    }
.end annotation


# static fields
.field private static greylist-max-o DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static greylist-max-o FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static greylist-max-o INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final greylist-max-o sFloatEvaluator:Landroid/animation/TypeEvaluator;

.field private static final greylist-max-o sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sIntEvaluator:Landroid/animation/TypeEvaluator;

.field private static final greylist-max-o sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnimatedValue:Ljava/lang/Object;

.field private greylist-max-o mConverter:Landroid/animation/TypeConverter;

.field private greylist-max-o mEvaluator:Landroid/animation/TypeEvaluator;

.field private greylist-max-o mGetter:Ljava/lang/reflect/Method;

.field greylist-max-o mKeyframes:Landroid/animation/Keyframes;

.field protected greylist-max-o mProperty:Landroid/util/Property;

.field greylist-max-o mPropertyName:Ljava/lang/String;

.field greylist-max-o mSetter:Ljava/lang/reflect/Method;

.field final greylist-max-o mTmpValueArray:[Ljava/lang/Object;

.field greylist-max-o mValueType:Ljava/lang/Class;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnCallFloatMethod(Ljava/lang/Object;JF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallFloatMethod(Ljava/lang/Object;JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallFourFloatMethod(Ljava/lang/Object;JFFFF)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallFourIntMethod(Ljava/lang/Object;JIIII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/animation/PropertyValuesHolder;->nCallFourIntMethod(Ljava/lang/Object;JIIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallIntMethod(Ljava/lang/Object;JI)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallMultipleFloatMethod(Ljava/lang/Object;J[F)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallMultipleIntMethod(Ljava/lang/Object;J[I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->nCallMultipleIntMethod(Ljava/lang/Object;J[I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallTwoFloatMethod(Ljava/lang/Object;JFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoFloatMethod(Ljava/lang/Object;JFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCallTwoIntMethod(Ljava/lang/Object;JII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->nCallTwoIntMethod(Ljava/lang/Object;JII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 2

    invoke-static {p0, p1}, Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/animation/PropertyValuesHolder;->nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 82
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    .line 83
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    .line 92
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 94
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v8

    sput-object v1, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 96
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v8

    sput-object v0, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/util/Property;)V
    .registers 3
    .param p1, "property"    # Landroid/util/Property;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 67
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 78
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 143
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 144
    if-eqz p1, :cond_19

    .line 145
    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 147
    :cond_19
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 67
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 78
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private greylist-max-o convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 866
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-eqz v0, :cond_3c

    .line 867
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    instance-of v0, v0, Landroid/animation/BidirectionalTypeConverter;

    if-eqz v0, :cond_13

    .line 872
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    check-cast v0, Landroid/animation/BidirectionalTypeConverter;

    invoke-virtual {v0, p1}, Landroid/animation/BidirectionalTypeConverter;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3c

    .line 868
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Converter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    .line 869
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a BidirectionalTypeConverter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_3c
    :goto_3c
    return-object p1
.end method

.method static greylist-max-o getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1140
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2d

    .line 1144
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1145
    .local v0, "firstLetter":C
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "theRest":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1142
    .end local v0    # "firstLetter":C
    .end local v1    # "theRest":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-object p0
.end method

.method private greylist-max-o getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 13
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueType"    # Ljava/lang/Class;

    .line 697
    const/4 v0, 0x0

    .line 698
    .local v0, "returnVal":Ljava/lang/reflect/Method;
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 700
    .local v2, "args":[Ljava/lang/Class;
    if-nez p3, :cond_12

    .line 702
    :try_start_a
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_e} :catch_10

    move-object v0, v3

    .line 705
    :goto_f
    goto :goto_53

    .line 703
    :catch_10
    move-exception v3

    goto :goto_f

    .line 707
    :cond_12
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .line 709
    const-class v4, Ljava/lang/Float;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_21

    .line 710
    sget-object v3, Landroid/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .local v3, "typeVariants":[Ljava/lang/Class;
    goto :goto_3b

    .line 711
    .end local v3    # "typeVariants":[Ljava/lang/Class;
    :cond_21
    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 712
    sget-object v3, Landroid/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .restart local v3    # "typeVariants":[Ljava/lang/Class;
    goto :goto_3b

    .line 713
    .end local v3    # "typeVariants":[Ljava/lang/Class;
    :cond_2c
    const-class v4, Ljava/lang/Double;

    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 714
    sget-object v3, Landroid/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .restart local v3    # "typeVariants":[Ljava/lang/Class;
    goto :goto_3b

    .line 716
    .end local v3    # "typeVariants":[Ljava/lang/Class;
    :cond_37
    new-array v3, v3, [Ljava/lang/Class;

    .line 717
    .restart local v3    # "typeVariants":[Ljava/lang/Class;
    aput-object p3, v3, v5

    .line 719
    :goto_3b
    array-length v4, v3

    move v6, v5

    :goto_3d
    if-ge v6, v4, :cond_53

    aget-object v7, v3, v6

    .line 720
    .local v7, "typeVariant":Ljava/lang/Class;
    aput-object v7, v2, v5

    .line 722
    :try_start_43
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v0, v8

    .line 723
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v8, :cond_4e

    .line 725
    iput-object v7, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_43 .. :try_end_4e} :catch_4f

    .line 727
    :cond_4e
    return-object v0

    .line 728
    :catch_4f
    move-exception v8

    .line 719
    .end local v7    # "typeVariant":Ljava/lang/Class;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 735
    .end local v3    # "typeVariants":[Ljava/lang/Class;
    :cond_53
    :goto_53
    if-nez v0, :cond_87

    .line 736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 737
    invoke-static {p2, v4}, Landroid/animation/PropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found on target class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 736
    const-string v4, "PropertyValuesHolder"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_87
    return-object v0
.end method

.method private static native greylist-max-o nCallFloatMethod(Ljava/lang/Object;JF)V
.end method

.method private static native greylist-max-o nCallFourFloatMethod(Ljava/lang/Object;JFFFF)V
.end method

.method private static native greylist-max-o nCallFourIntMethod(Ljava/lang/Object;JIIII)V
.end method

.method private static native greylist-max-o nCallIntMethod(Ljava/lang/Object;JI)V
.end method

.method private static native greylist-max-o nCallMultipleFloatMethod(Ljava/lang/Object;J[F)V
.end method

.method private static native greylist-max-o nCallMultipleIntMethod(Ljava/lang/Object;J[I)V
.end method

.method private static native greylist-max-o nCallTwoFloatMethod(Ljava/lang/Object;JFF)V
.end method

.method private static native greylist-max-o nCallTwoIntMethod(Ljava/lang/Object;JII)V
.end method

.method private static native greylist-max-o nGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native greylist-max-o nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method private static native greylist-max-o nGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
.end method

.method public static varargs whitelist ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .param p1, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 287
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;[F)V

    return-object v0
.end method

.method public static varargs whitelist ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [F

    .line 276
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs whitelist ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 168
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;[I)V

    return-object v0
.end method

.method public static varargs whitelist ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;
    .registers 3
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .line 157
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs whitelist ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .line 562
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 563
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .line 541
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 542
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    invoke-static {p0, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    return-object v1
.end method

.method static greylist-max-o ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "keyframes"    # Landroid/animation/Keyframes;

    .line 581
    instance-of v0, p1, Landroid/animation/Keyframes$IntKeyframes;

    if-eqz v0, :cond_d

    .line 582
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-object v1, p1

    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    invoke-direct {v0, p0, v1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V

    return-object v0

    .line 583
    :cond_d
    instance-of v0, p1, Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_1a

    .line 584
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-object v1, p1

    check-cast v1, Landroid/animation/Keyframes$FloatKeyframes;

    invoke-direct {v0, p0, v1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/Keyframes$FloatKeyframes;)V

    return-object v0

    .line 586
    :cond_1a
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 587
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 588
    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 589
    return-object v0
.end method

.method static greylist-max-o ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "keyframes"    # Landroid/animation/Keyframes;

    .line 567
    instance-of v0, p1, Landroid/animation/Keyframes$IntKeyframes;

    if-eqz v0, :cond_d

    .line 568
    new-instance v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-object v1, p1

    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    invoke-direct {v0, p0, v1}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V

    return-object v0

    .line 569
    :cond_d
    instance-of v0, p1, Landroid/animation/Keyframes$FloatKeyframes;

    if-eqz v0, :cond_1a

    .line 570
    new-instance v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-object v1, p1

    check-cast v1, Landroid/animation/Keyframes$FloatKeyframes;

    invoke-direct {v0, p0, v1}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/Keyframes$FloatKeyframes;)V

    return-object v0

    .line 573
    :cond_1a
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    iput-object p1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 575
    invoke-interface {p1}, Landroid/animation/Keyframes;->getType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 576
    return-object v0
.end method

.method public static varargs whitelist ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p3, "values"    # [Landroid/animation/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[F>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 382
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 383
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v1
.end method

.method public static varargs whitelist ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TV;[F>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 360
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;[F>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 337
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 338
    .local v0, "keyframes":Landroid/animation/Keyframes;
    new-instance v1, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;

    invoke-direct {v1}, Landroid/animation/PropertyValuesHolder$PointFToFloatArray;-><init>()V

    .line 339
    .local v1, "converter":Landroid/animation/PropertyValuesHolder$PointFToFloatArray;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v2
.end method

.method public static whitelist ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;
    .registers 7
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [[F

    .line 305
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3b

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "numParameters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 310
    aget-object v2, p1, v1

    if-eqz v2, :cond_21

    .line 313
    aget-object v2, p1, v1

    array-length v2, v2

    .line 314
    .local v2, "length":I
    if-nez v1, :cond_14

    .line 315
    move v0, v2

    goto :goto_16

    .line 316
    :cond_14
    if-ne v2, v0, :cond_19

    .line 309
    .end local v2    # "length":I
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 317
    .restart local v2    # "length":I
    :cond_19
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Values must all have the same length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    .end local v2    # "length":I
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "values must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    .end local v1    # "i":I
    :cond_2a
    new-instance v1, Landroid/animation/FloatArrayEvaluator;

    new-array v2, v0, [F

    invoke-direct {v1, v2}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    .line 321
    .local v1, "evaluator":Landroid/animation/FloatArrayEvaluator;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v2, p0, v3, v1, v4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v2

    .line 306
    .end local v0    # "numParameters":I
    .end local v1    # "evaluator":Landroid/animation/FloatArrayEvaluator;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least 2 values must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p3, "values"    # [Landroid/animation/Keyframe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[I>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[",
            "Landroid/animation/Keyframe;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 264
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;

    move-result-object v0

    .line 265
    .local v0, "keyframeSet":Landroid/animation/KeyframeSet;
    new-instance v1, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v1
.end method

.method public static varargs whitelist ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TV;[I>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 242
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;[I>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whitelist ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 218
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .line 219
    .local v0, "keyframes":Landroid/animation/Keyframes;
    new-instance v1, Landroid/animation/PropertyValuesHolder$PointFToIntArray;

    invoke-direct {v1}, Landroid/animation/PropertyValuesHolder$PointFToIntArray;-><init>()V

    .line 220
    .local v1, "converter":Landroid/animation/PropertyValuesHolder$PointFToIntArray;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V

    return-object v2
.end method

.method public static whitelist ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;
    .registers 7
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "values"    # [[I

    .line 186
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3b

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "numParameters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 191
    aget-object v2, p1, v1

    if-eqz v2, :cond_21

    .line 194
    aget-object v2, p1, v1

    array-length v2, v2

    .line 195
    .local v2, "length":I
    if-nez v1, :cond_14

    .line 196
    move v0, v2

    goto :goto_16

    .line 197
    :cond_14
    if-ne v2, v0, :cond_19

    .line 190
    .end local v2    # "length":I
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 198
    .restart local v2    # "length":I
    :cond_19
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Values must all have the same length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    .end local v2    # "length":I
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "values must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    .end local v1    # "i":I
    :cond_2a
    new-instance v1, Landroid/animation/IntArrayEvaluator;

    new-array v2, v0, [I

    invoke-direct {v1, v2}, Landroid/animation/IntArrayEvaluator;-><init>([I)V

    .line 202
    .local v1, "evaluator":Landroid/animation/IntArrayEvaluator;
    new-instance v2, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;

    const/4 v3, 0x0

    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    invoke-direct {v2, p0, v3, v1, v4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V

    return-object v2

    .line 187
    .end local v0    # "numParameters":I
    .end local v1    # "evaluator":Landroid/animation/IntArrayEvaluator;
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least 2 values must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs whitelist ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property<",
            "*TV;>;",
            "Landroid/animation/TypeConverter<",
            "TT;TV;>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[TT;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 489
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*TV;>;"
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 490
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 491
    invoke-virtual {v0, p3}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 493
    return-object v0
.end method

.method public static whitelist ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property<",
            "*TV;>;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 514
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<*TV;>;"
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 515
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 516
    const-class v1, Landroid/graphics/PointF;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 517
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 518
    return-object v0
.end method

.method public static varargs whitelist ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "property"    # Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/Property;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 456
    .local p1, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;)V

    .line 457
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 459
    return-object v0
.end method

.method public static whitelist ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .registers 5
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 429
    .local p1, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-static {p2}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 431
    const-class v1, Landroid/graphics/PointF;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 432
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 433
    return-object v0
.end method

.method public static varargs whitelist ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .registers 4
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 405
    new-instance v0, Landroid/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0, p2}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 408
    return-object v0
.end method

.method private greylist-max-o setupGetter(Ljava/lang/Class;)V
    .registers 5
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 796
    sget-object v0, Landroid/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 797
    return-void
.end method

.method private greylist-max-o setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "targetClass"    # Ljava/lang/Class;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "valueType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 758
    .local p2, "propertyMapMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;>;"
    const/4 v0, 0x0

    .line 759
    .local v0, "setterOrGetter":Ljava/lang/reflect/Method;
    monitor-enter p2

    .line 763
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 764
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    const/4 v2, 0x0

    .line 765
    .local v2, "wasInMap":Z
    if-eqz v1, :cond_1d

    .line 766
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 767
    if-eqz v2, :cond_1d

    .line 768
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    move-object v0, v3

    .line 771
    :cond_1d
    if-nez v2, :cond_34

    .line 772
    invoke-direct {p0, p1, p3, p4}, Landroid/animation/PropertyValuesHolder;->getPropertyFunction(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 773
    if-nez v1, :cond_2f

    .line 774
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 775
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    :cond_2f
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .end local v2    # "wasInMap":Z
    :cond_34
    monitor-exit p2

    .line 780
    return-object v0

    .line 779
    :catchall_36
    move-exception v1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private greylist-max-o setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "kf"    # Landroid/animation/Keyframe;

    .line 885
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_14

    .line 886
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v0, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 887
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 888
    .end local v0    # "value":Ljava/lang/Object;
    goto :goto_47

    .line 890
    :cond_14
    :try_start_14
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v1, :cond_24

    .line 891
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 892
    .local v1, "targetClass":Ljava/lang/Class;
    invoke-direct {p0, v1}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 893
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v2, :cond_24

    .line 895
    return-void

    .line 898
    .end local v1    # "targetClass":Ljava/lang/Class;
    :cond_24
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 899
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_34} :catch_3e
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_34} :catch_35

    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_46

    .line 902
    :catch_35
    move-exception v1

    .line 903
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 900
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v1

    .line 901
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_46
    nop

    .line 906
    :goto_47
    return-void
.end method


# virtual methods
.method greylist-max-o calculateValue(F)V
    .registers 4
    .param p1, "fraction"    # F

    .line 1017
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    .line 1018
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v1, :cond_c

    move-object v1, v0

    goto :goto_12

    :cond_c
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    invoke-virtual {v1, v0}, Landroid/animation/TypeConverter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 1019
    return-void
.end method

.method public whitelist clone()Landroid/animation/PropertyValuesHolder;
    .registers 3

    .line 941
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder;

    .line 942
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 943
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 944
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v1}, Landroid/animation/Keyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v1

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 945
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 946
    return-object v0

    .line 947
    .end local v0    # "newPVH":Landroid/animation/PropertyValuesHolder;
    :catch_1b
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 1070
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getPropertyName()Ljava/lang/String;
    .registers 2

    .line 1061
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPropertyValues(Landroid/animation/PropertyValuesHolder$PropertyValues;)V
    .registers 4
    .param p1, "values"    # Landroid/animation/PropertyValuesHolder$PropertyValues;

    .line 1080
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->init()V

    .line 1081
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->propertyName:Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->type:Ljava/lang/Class;

    .line 1083
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    .line 1084
    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_25

    .line 1087
    new-instance v0, Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->startValue:Ljava/lang/Object;

    .line 1089
    :cond_25
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    .line 1090
    iget-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/PathParser$PathData;

    if-eqz v0, :cond_40

    .line 1093
    new-instance v0, Landroid/util/PathParser$PathData;

    iget-object v1, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    check-cast v1, Landroid/util/PathParser$PathData;

    invoke-direct {v0, v1}, Landroid/util/PathParser$PathData;-><init>(Landroid/util/PathParser$PathData;)V

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->endValue:Ljava/lang/Object;

    .line 1096
    :cond_40
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v0, v0, Landroid/animation/PathKeyframes$FloatKeyframesBase;

    if-nez v0, :cond_66

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of v0, v0, Landroid/animation/PathKeyframes$IntKeyframesBase;

    if-nez v0, :cond_66

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1098
    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_62

    goto :goto_66

    .line 1110
    :cond_62
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    goto :goto_6d

    .line 1103
    :cond_66
    :goto_66
    new-instance v0, Landroid/animation/PropertyValuesHolder$1;

    invoke-direct {v0, p0}, Landroid/animation/PropertyValuesHolder$1;-><init>(Landroid/animation/PropertyValuesHolder;)V

    iput-object v0, p1, Landroid/animation/PropertyValuesHolder$PropertyValues;->dataSource:Landroid/animation/PropertyValuesHolder$PropertyValues$DataSource;

    .line 1112
    :goto_6d
    return-void
.end method

.method public greylist-max-o getValueType()Ljava/lang/Class;
    .registers 2

    .line 1118
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    return-object v0
.end method

.method greylist-max-o init()V
    .registers 3

    .line 981
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v0, :cond_19

    .line 984
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_d

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sIntEvaluator:Landroid/animation/TypeEvaluator;

    goto :goto_17

    .line 985
    :cond_d
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_16

    sget-object v0, Landroid/animation/PropertyValuesHolder;->sFloatEvaluator:Landroid/animation/TypeEvaluator;

    goto :goto_17

    .line 986
    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 988
    :cond_19
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_24

    .line 991
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 993
    :cond_24
    return-void
.end method

.method greylist-max-o setAnimatedValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "target"    # Ljava/lang/Object;

    .line 961
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_f

    .line 962
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 964
    :cond_f
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_36

    .line 966
    :try_start_13
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 967
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_35

    .line 970
    :catch_24
    move-exception v1

    .line 971
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 968
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2d
    move-exception v1

    .line 969
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_35
    nop

    .line 974
    :cond_36
    :goto_36
    return-void
.end method

.method public whitelist setConverter(Landroid/animation/TypeConverter;)V
    .registers 2
    .param p1, "converter"    # Landroid/animation/TypeConverter;

    .line 677
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    .line 678
    return-void
.end method

.method public whitelist setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 3
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .line 1006
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 1007
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1008
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 3
    .param p1, "values"    # [F

    .line 625
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 626
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofFloat([F)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 627
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 3
    .param p1, "values"    # [I

    .line 607
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 608
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofInt([I)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 609
    return-void
.end method

.method public varargs whitelist setKeyframes([Landroid/animation/Keyframe;)V
    .registers 6
    .param p1, "values"    # [Landroid/animation/Keyframe;

    .line 635
    array-length v0, p1

    .line 636
    .local v0, "numKeyframes":I
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroid/animation/Keyframe;

    .line 637
    .local v1, "keyframes":[Landroid/animation/Keyframe;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 638
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_1b

    .line 639
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 638
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 641
    .end local v2    # "i":I
    :cond_1b
    new-instance v2, Landroid/animation/KeyframeSet;

    invoke-direct {v2, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    iput-object v2, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 642
    return-void
.end method

.method public varargs whitelist setObjectValues([Ljava/lang/Object;)V
    .registers 4
    .param p1, "values"    # [Ljava/lang/Object;

    .line 663
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 664
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 665
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-eqz v0, :cond_1a

    .line 666
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-interface {v0, v1}, Landroid/animation/Keyframes;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 668
    :cond_1a
    return-void
.end method

.method public whitelist setProperty(Landroid/util/Property;)V
    .registers 2
    .param p1, "property"    # Landroid/util/Property;

    .line 1049
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 1050
    return-void
.end method

.method public whitelist setPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1037
    iput-object p1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 1038
    return-void
.end method

.method greylist-max-o setupEndValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 932
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    .line 933
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 934
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    .line 936
    :cond_1b
    return-void
.end method

.method greylist-max-o setupSetter(Ljava/lang/Class;)V
    .registers 5
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 788
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mConverter:Landroid/animation/TypeConverter;

    invoke-virtual {v0}, Landroid/animation/TypeConverter;->getTargetType()Ljava/lang/Class;

    move-result-object v0

    .line 789
    .local v0, "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_d
    sget-object v1, Landroid/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    const-string/jumbo v2, "set"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/animation/PropertyValuesHolder;->setupSetterOrGetter(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 790
    return-void
.end method

.method greylist-max-o setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 12
    .param p1, "target"    # Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    const/4 v1, 0x0

    const-string v2, "PropertyValuesHolder"

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, "testValue":Ljava/lang/Object;
    :try_start_9
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v4}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v4

    .line 815
    .local v4, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    if-nez v4, :cond_13

    move v5, v1

    goto :goto_17

    :cond_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 816
    .local v5, "keyframeCount":I
    :goto_17
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_18
    if-ge v6, v5, :cond_42

    .line 817
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 818
    .local v7, "kf":Landroid/animation/Keyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual {v7}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 819
    :cond_2c
    if-nez v0, :cond_39

    .line 820
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v8, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    .line 822
    :cond_39
    invoke-virtual {v7, v0}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 823
    invoke-virtual {v7, v3}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_3f} :catch_43

    .line 816
    .end local v7    # "kf":Landroid/animation/Keyframe;
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 826
    .end local v6    # "i":I
    :cond_42
    return-void

    .line 827
    .end local v0    # "testValue":Ljava/lang/Object;
    .end local v4    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    .end local v5    # "keyframeCount":I
    :catch_43
    move-exception v0

    .line 828
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No such property ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    invoke-virtual {v5}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") on target object "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Trying reflection instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    .line 834
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_73
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-nez v0, :cond_d9

    .line 835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 836
    .local v0, "targetClass":Ljava/lang/Class;
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-nez v4, :cond_82

    .line 837
    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 839
    :cond_82
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v4}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v4

    .line 840
    .restart local v4    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    if-nez v4, :cond_8c

    move v5, v1

    goto :goto_90

    :cond_8c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 841
    .restart local v5    # "keyframeCount":I
    :goto_90
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_91
    if-ge v6, v5, :cond_d9

    .line 842
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 843
    .restart local v7    # "kf":Landroid/animation/Keyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-virtual {v7}, Landroid/animation/Keyframe;->valueWasSetOnStart()Z

    move-result v8

    if-eqz v8, :cond_d6

    .line 844
    :cond_a5
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v8, :cond_b1

    .line 845
    invoke-direct {p0, v0}, Landroid/animation/PropertyValuesHolder;->setupGetter(Ljava/lang/Class;)V

    .line 846
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    if-nez v8, :cond_b1

    .line 848
    return-void

    .line 852
    :cond_b1
    :try_start_b1
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/animation/PropertyValuesHolder;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 853
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 854
    invoke-virtual {v7, v3}, Landroid/animation/Keyframe;->setValueWasSetOnStart(Z)V
    :try_end_c3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b1 .. :try_end_c3} :catch_cd
    .catch Ljava/lang/IllegalAccessException; {:try_start_b1 .. :try_end_c3} :catch_c4

    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_d5

    .line 857
    :catch_c4
    move-exception v8

    .line 858
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 855
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catch_cd
    move-exception v8

    .line 856
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_d5
    nop

    .line 841
    .end local v7    # "kf":Landroid/animation/Keyframe;
    :cond_d6
    :goto_d6
    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    .line 863
    .end local v0    # "targetClass":Ljava/lang/Class;
    .end local v4    # "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    .end local v5    # "keyframeCount":I
    .end local v6    # "i":I
    :cond_d9
    return-void
.end method

.method greylist-max-o setupStartValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v0}, Landroid/animation/Keyframes;->getKeyframes()Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 919
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframe;

    invoke-direct {p0, p1, v1}, Landroid/animation/PropertyValuesHolder;->setupValue(Ljava/lang/Object;Landroid/animation/Keyframe;)V

    .line 921
    :cond_16
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-interface {v1}, Landroid/animation/Keyframes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
