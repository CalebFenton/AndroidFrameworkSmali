.class Ljava/text/FieldPosition$Delegate;
.super Ljava/lang/Object;
.source "FieldPosition.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/FieldPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delegate"
.end annotation


# instance fields
.field private greylist-max-o encounteredField:Z

.field final synthetic blacklist this$0:Ljava/text/FieldPosition;


# direct methods
.method private constructor blacklist <init>(Ljava/text/FieldPosition;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 8
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    .line 307
    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-static {v0, p2, p1}, Ljava/text/FieldPosition;->-$$Nest$mmatchesField(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 308
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 309
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 310
    if-eq p4, p5, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    .line 312
    :cond_1d
    return-void
.end method

.method public greylist-max-o formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 7
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    .line 298
    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    if-nez v0, :cond_1d

    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-static {v0, p1}, Ljava/text/FieldPosition;->-$$Nest$mmatchesField(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 299
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 300
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 301
    if-eq p3, p4, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    .line 303
    :cond_1d
    return-void
.end method
