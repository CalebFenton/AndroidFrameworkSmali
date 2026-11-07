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


# direct methods
.method constructor blacklist <init>(Ljava/text/DontCareFieldPosition;)V
    .registers 2
    .param p1, "this$0"    # Ljava/text/DontCareFieldPosition;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist formatted(ILjava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 7
    .param p1, "fieldID"    # I
    .param p2, "attr"    # Ljava/text/Format$Field;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "buffer"    # Ljava/lang/StringBuffer;

    .line 43
    return-void
.end method

.method public blacklist formatted(Ljava/text/Format$Field;Ljava/lang/Object;IILjava/lang/StringBuffer;)V
    .registers 6
    .param p1, "attr"    # Ljava/text/Format$Field;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "buffer"    # Ljava/lang/StringBuffer;

    .line 40
    return-void
.end method
