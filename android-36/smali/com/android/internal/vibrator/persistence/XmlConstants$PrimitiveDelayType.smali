.class public final enum Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
.super Ljava/lang/Enum;
.source "XmlConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/XmlConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrimitiveDelayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

.field public static final enum blacklist PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

.field public static final enum blacklist RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;


# instance fields
.field private final blacklist mDelayType:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 2

    .line 217
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    sget-object v1, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    filled-new-array {v0, v1}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 218
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    const-string v1, "PAUSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->PAUSE:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    .line 219
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    const-string v1, "RELATIVE_START_OFFSET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->RELATIVE_START_OFFSET:Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    .line 217
    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    .line 225
    return-void
.end method

.method public static blacklist findByName(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 3
    .param p0, "delayType"    # Ljava/lang/String;

    .line 248
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 249
    :catch_b
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist findByType(I)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 6
    .param p0, "delayType"    # I

    .line 233
    invoke-static {}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 234
    .local v3, "type":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    iget v4, v3, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    if-ne v4, p0, :cond_f

    .line 235
    return-object v3

    .line 233
    .end local v3    # "type":Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 238
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 217
    const-class v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;
    .registers 1

    .line 217
    sget-object v0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->$VALUES:[Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    invoke-virtual {v0}, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;

    return-object v0
.end method


# virtual methods
.method public blacklist getDelayType()I
    .registers 2

    .line 256
    iget v0, p0, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->mDelayType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/vibrator/persistence/XmlConstants$PrimitiveDelayType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
