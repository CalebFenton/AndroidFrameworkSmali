.class public Landroid/icu/message2/MessageFormatter$Builder;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MessageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private blacklist dataModel:Landroid/icu/message2/MFDataModel$Message;

.field private blacklist errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

.field private blacklist functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

.field private blacklist locale:Ljava/util/Locale;

.field private blacklist pattern:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdataModel(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFDataModel$Message;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MessageFormatter$Builder;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeterrorHandlingBehavior(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MessageFormatter$Builder;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfunctionRegistry(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFFunctionRegistry;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MessageFormatter$Builder;->functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlocale(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MessageFormatter$Builder;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpattern(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MessageFormatter$Builder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter$Builder;->locale:Ljava/util/Locale;

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter$Builder;->pattern:Ljava/lang/String;

    .line 337
    sget-object v1, Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;->BEST_EFFORT:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    iput-object v1, p0, Landroid/icu/message2/MessageFormatter$Builder;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 338
    invoke-static {}, Landroid/icu/message2/MFFunctionRegistry;->builder()Landroid/icu/message2/MFFunctionRegistry$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->build()Landroid/icu/message2/MFFunctionRegistry;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/message2/MessageFormatter$Builder;->functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

    .line 339
    iput-object v0, p0, Landroid/icu/message2/MessageFormatter$Builder;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    .line 342
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/MessageFormatter-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/message2/MessageFormatter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/icu/message2/MessageFormatter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    new-instance v0, Landroid/icu/message2/MessageFormatter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/message2/MessageFormatter;-><init>(Landroid/icu/message2/MessageFormatter$Builder;Landroid/icu/message2/MessageFormatter-IA;)V

    return-object v0
.end method

.method public blacklist setDataModel(Landroid/icu/message2/MFDataModel$Message;)Landroid/icu/message2/MessageFormatter$Builder;
    .registers 3
    .param p1, "dataModel"    # Landroid/icu/message2/MFDataModel$Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 426
    iput-object p1, p0, Landroid/icu/message2/MessageFormatter$Builder;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter$Builder;->pattern:Ljava/lang/String;

    .line 428
    return-object p0
.end method

.method public blacklist setErrorHandlingBehavior(Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;)Landroid/icu/message2/MessageFormatter$Builder;
    .registers 2
    .param p1, "errorHandlingBehavior"    # Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    iput-object p1, p0, Landroid/icu/message2/MessageFormatter$Builder;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 390
    return-object p0
.end method

.method public blacklist setFunctionRegistry(Landroid/icu/message2/MFFunctionRegistry;)Landroid/icu/message2/MessageFormatter$Builder;
    .registers 2
    .param p1, "functionRegistry"    # Landroid/icu/message2/MFFunctionRegistry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    iput-object p1, p0, Landroid/icu/message2/MessageFormatter$Builder;->functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

    .line 411
    return-object p0
.end method

.method public blacklist setLocale(Ljava/util/Locale;)Landroid/icu/message2/MessageFormatter$Builder;
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iput-object p1, p0, Landroid/icu/message2/MessageFormatter$Builder;->locale:Ljava/util/Locale;

    .line 356
    return-object p0
.end method

.method public blacklist setPattern(Ljava/lang/String;)Landroid/icu/message2/MessageFormatter$Builder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    iput-object p1, p0, Landroid/icu/message2/MessageFormatter$Builder;->pattern:Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter$Builder;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    .line 373
    return-object p0
.end method
