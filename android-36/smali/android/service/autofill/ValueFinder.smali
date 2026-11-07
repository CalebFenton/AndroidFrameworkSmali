.class public interface abstract Landroid/service/autofill/ValueFinder;
.super Ljava/lang/Object;
.source "ValueFinder.java"


# virtual methods
.method public blacklist findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 37
    invoke-interface {p0, p1}, Landroid/service/autofill/ValueFinder;->findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 38
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x0

    :goto_17
    return-object v1
.end method

.method public abstract blacklist findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
.end method
