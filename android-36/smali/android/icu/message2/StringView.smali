.class Landroid/icu/message2/StringView;
.super Ljava/lang/Object;
.source "StringView.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field final blacklist offset:I

.field final blacklist text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/message2/StringView;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Landroid/icu/message2/StringView;->offset:I

    .line 13
    iput-object p1, p0, Landroid/icu/message2/StringView;->text:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 4
    .param p1, "index"    # I

    .line 27
    iget-object v0, p0, Landroid/icu/message2/StringView;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/message2/StringView;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 22
    iget-object v0, p0, Landroid/icu/message2/StringView;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/message2/StringView;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 32
    iget-object v0, p0, Landroid/icu/message2/StringView;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/message2/StringView;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/icu/message2/StringView;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 37
    iget-object v0, p0, Landroid/icu/message2/StringView;->text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/message2/StringView;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
