.class Ljava/text/DontCareFieldPosition$1;
.super Ljava/lang/Object;
.source "DontCareFieldPosition.java"

# interfaces
.implements Ljava/text/Format$FieldDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DontCareFieldPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/text/DontCareFieldPosition;


# direct methods
.method constructor <init>(Ljava/text/DontCareFieldPosition;)V
    .locals 0
    .param p1, "this$0"    # Ljava/text/DontCareFieldPosition;

    #@0
    .prologue
    .line 37
    iput-object p1, p0, Ljava/text/DontCareFieldPosition$1;->this$0:Ljava/text/DontCareFieldPosition;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 0
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 42
    return-void
.end method

.method public formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .locals 0
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 39
    return-void
.end method
