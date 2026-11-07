.class public interface abstract Landroid/text/Editable;
.super Ljava/lang/Object;
.source "Editable.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Editable$Factory;
    }
.end annotation


# virtual methods
.method public abstract whitelist append(C)Landroid/text/Editable;
.end method

.method public abstract whitelist append(Ljava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract whitelist append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-interface {p0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-interface {p0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist clear()V
.end method

.method public abstract whitelist clearSpans()V
.end method

.method public abstract whitelist delete(II)Landroid/text/Editable;
.end method

.method public abstract whitelist getFilters()[Landroid/text/InputFilter;
.end method

.method public abstract whitelist insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public abstract whitelist replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
.end method

.method public abstract whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
.end method

.method public abstract whitelist setFilters([Landroid/text/InputFilter;)V
.end method
