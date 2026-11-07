.class Ljava/util/Formatter$FixedString;
.super Ljava/lang/Object;
.source "Formatter.java"

# interfaces
.implements Ljava/util/Formatter$FormatString;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedString"
.end annotation


# instance fields
.field private final blacklist end:I

.field private final greylist-max-o s:Ljava/lang/String;

.field private final blacklist start:I

.field final synthetic blacklist this$0:Ljava/util/Formatter;


# direct methods
.method constructor blacklist <init>(Ljava/util/Formatter;Ljava/lang/String;II)V
    .registers 5
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2861
    iput-object p1, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2862
    iput-object p2, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    .line 2863
    iput p3, p0, Ljava/util/Formatter$FixedString;->start:I

    .line 2864
    iput p4, p0, Ljava/util/Formatter$FixedString;->end:I

    .line 2865
    return-void
.end method


# virtual methods
.method public greylist-max-o index()I
    .registers 2

    .line 2866
    const/4 v0, -0x2

    return v0
.end method

.method public greylist-max-o print(Ljava/lang/Object;Ljava/util/Locale;)V
    .registers 7
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "l"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2868
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->this$0:Ljava/util/Formatter;

    invoke-static {v0}, Ljava/util/Formatter;->-$$Nest$fgeta(Ljava/util/Formatter;)Ljava/lang/Appendable;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    iget v2, p0, Ljava/util/Formatter$FixedString;->start:I

    iget v3, p0, Ljava/util/Formatter$FixedString;->end:I

    invoke-interface {v0, v1, v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2869
    iget-object v0, p0, Ljava/util/Formatter$FixedString;->s:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FixedString;->start:I

    iget v2, p0, Ljava/util/Formatter$FixedString;->end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
