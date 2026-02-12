{% macro  savedive(num,denom)%}
        case
           when {{denom}}=0 then null
           else {{num}}/{{denom}} 
        end
{% endmacro %}