.class public Landroid/icu/message2/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/MessageFormatter$Builder;,
        Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist dataModel:Landroid/icu/message2/MFDataModel$Message;

.field private final blacklist errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

.field private final blacklist functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

.field private final blacklist locale:Ljava/util/Locale;

.field private final blacklist modelFormatter:Landroid/icu/message2/MFDataModelFormatter;

.field private final blacklist pattern:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/message2/MessageFormatter$Builder;)V
    .registers 7
    .param p1, "builder"    # Landroid/icu/message2/MessageFormatter$Builder;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetlocale(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->locale:Ljava/util/Locale;

    .line 155
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetfunctionRegistry(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFFunctionRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

    .line 156
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgeterrorHandlingBehavior(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    .line 157
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetpattern(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetdataModel(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    if-eqz v0, :cond_2e

    :cond_21
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetpattern(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetdataModel(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_36

    .line 159
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You need to set either a pattern, or a dataModel, but not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_36
    :goto_36
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetdataModel(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 164
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetdataModel(Landroid/icu/message2/MessageFormatter$Builder;)Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    .line 166
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    invoke-static {v0}, Landroid/icu/message2/MFSerializer;->dataModelToString(Landroid/icu/message2/MFDataModel$Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->pattern:Ljava/lang/String;

    goto :goto_5a

    .line 168
    :cond_4b
    invoke-static {p1}, Landroid/icu/message2/MessageFormatter$Builder;->-$$Nest$fgetpattern(Landroid/icu/message2/MessageFormatter$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->pattern:Ljava/lang/String;

    .line 170
    :try_start_51
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->pattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/message2/MFParser;->parse(Ljava/lang/String;)Landroid/icu/message2/MFDataModel$Message;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->dataModel:Landroid/icu/message2/MFDataModel$Message;
    :try_end_59
    .catch Landroid/icu/message2/MFParseException; {:try_start_51 .. :try_end_59} :catch_6a

    .line 176
    nop

    .line 178
    :goto_5a
    new-instance v0, Landroid/icu/message2/MFDataModelFormatter;

    iget-object v1, p0, Landroid/icu/message2/MessageFormatter;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    iget-object v2, p0, Landroid/icu/message2/MessageFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Landroid/icu/message2/MessageFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    iget-object v4, p0, Landroid/icu/message2/MessageFormatter;->functionRegistry:Landroid/icu/message2/MFFunctionRegistry;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/message2/MFDataModelFormatter;-><init>(Landroid/icu/message2/MFDataModel$Message;Ljava/util/Locale;Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;Landroid/icu/message2/MFFunctionRegistry;)V

    iput-object v0, p0, Landroid/icu/message2/MessageFormatter;->modelFormatter:Landroid/icu/message2/MFDataModelFormatter;

    .line 179
    return-void

    .line 171
    :catch_6a
    move-exception v0

    .line 172
    .local v0, "pe":Landroid/icu/message2/MFParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:\nMessage: <<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/message2/MessageFormatter;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">>\nError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    invoke-virtual {v0}, Landroid/icu/message2/MFParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/MessageFormatter$Builder;Landroid/icu/message2/MessageFormatter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/message2/MessageFormatter;-><init>(Landroid/icu/message2/MessageFormatter$Builder;)V

    return-void
.end method

.method public static blacklist builder()Landroid/icu/message2/MessageFormatter$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    new-instance v0, Landroid/icu/message2/MessageFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/message2/MessageFormatter$Builder;-><init>(Landroid/icu/message2/MessageFormatter-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist format(Ljava/util/Map;)Landroid/icu/message2/FormattedMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/icu/message2/FormattedMessage;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist formatToString(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->modelFormatter:Landroid/icu/message2/MFDataModelFormatter;

    invoke-virtual {v0, p1}, Landroid/icu/message2/MFDataModelFormatter;->format(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataModel()Landroid/icu/message2/MFDataModel$Message;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->dataModel:Landroid/icu/message2/MFDataModel$Message;

    return-object v0
.end method

.method public blacklist getErrorHandlingBehavior()Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->errorHandlingBehavior:Landroid/icu/message2/MessageFormatter$ErrorHandlingBehavior;

    return-object v0
.end method

.method public blacklist getLocale()Ljava/util/Locale;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getPattern()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/icu/message2/MessageFormatter;->pattern:Ljava/lang/String;

    return-object v0
.end method
