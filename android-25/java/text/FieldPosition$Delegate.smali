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
.field private encounteredField:Z

.field final synthetic this$0:Ljava/text/FieldPosition;


# direct methods
.method private constructor <init>(Ljava/text/FieldPosition;)V
    .locals 0
    .param p1, "this$0"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 277
    iput-object p1, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Ljava/text/FieldPosition;Ljava/text/FieldPosition$Delegate;)V
    .locals 0
    .param p1, "this$0"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    invoke-direct {p0, p1}, Ljava/text/FieldPosition$Delegate;-><init>(Ljava/text/FieldPosition;)V

    #@3
    return-void
.end method


# virtual methods
.method public formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 296
    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@6
    invoke-static {v0, p2, p1}, Ljava/text/FieldPosition;->-wrap1(Ljava/text/FieldPosition;Ljava/text/Format$Field;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 297
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@e
    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11
    .line 298
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@13
    invoke-virtual {v0, p5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@16
    .line 299
    if-eq p4, p5, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    #@1b
    .line 295
    :cond_0
    return-void

    #@1c
    .line 299
    :cond_1
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method

.method public formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 287
    iget-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@6
    invoke-static {v0, p1}, Ljava/text/FieldPosition;->-wrap0(Ljava/text/FieldPosition;Ljava/text/Format$Field;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 288
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@e
    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11
    .line 289
    iget-object v0, p0, Ljava/text/FieldPosition$Delegate;->this$0:Ljava/text/FieldPosition;

    #@13
    invoke-virtual {v0, p4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@16
    .line 290
    if-eq p3, p4, :cond_1

    #@18
    const/4 v0, 0x1

    #@19
    :goto_0
    iput-boolean v0, p0, Ljava/text/FieldPosition$Delegate;->encounteredField:Z

    #@1b
    .line 286
    :cond_0
    return-void

    #@1c
    .line 290
    :cond_1
    const/4 v0, 0x0

    #@1d
    goto :goto_0
.end method
